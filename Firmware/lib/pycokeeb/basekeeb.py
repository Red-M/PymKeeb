import board
import time
import busio
import adafruit_dotstar
import tasko
from digitalio import DigitalInOut, Direction, Pull
from adafruit_bus_device.i2c_device import I2CDevice

import usb_hid
from adafruit_hid.keyboard import Keyboard
from adafruit_hid.keycode import Keycode
from adafruit_hid.consumer_control import ConsumerControl
from adafruit_hid.consumer_control_code import ConsumerControlCode
from pycokeeb.keytypes import KeyTypes,meta_key_enum

class BaseKeeb():

    def get_led_count(self):
        total = 0
        for i in range(0,len(self.led_i2c)):
            total+=self.led_i2c[i].n
        return(total)

    def power_budgets(self):
        main_board_allowance = 100 # This is the amount of power for everything minus the LEDs
        return({'main_board':main_board_allowance,'leds':self.USB_mA_total-main_board_allowance})

    def led_brightness(self):
        led_max_ma = 60
        value = float(self.power_budgets()['leds']/self.get_led_count())/led_max_ma
        if value>1.0:
            value = 1.0
        return(value)

    def mcp(self,device):
        return(self._mcp[device])

    def _mcp_pin(self,device,pin):
        return(self.mcp(device).get_pin(pin))

    def _mcp_int_flaga(self,device):
        return(self.mcp(device).int_flaga)
    def _mcp_int_flagb(self,device):
        return(self.mcp(device).int_flagb)

    def check_keys(self):
        for pin in self.row_pins:
            pin.direction = Direction.INPUT
            pin.pull = Pull.UP
        for row in range(len(self.row_pins)):
            # time.sleep(self.debounce_time) # Do not change this to an async sleep, this needs to be very percise.
            self.row_pins[row].direction = Direction.OUTPUT
            self.row_pins[row].value = False
            for int_pin_index in range(len(self.int_pins)):
                if int_pin_index==1:
                    continue
                if self.int_pins[int_pin_index].value==False:
                    ints_flag = self.int_flags[int_pin_index](self.int_pins_to_mcp[int_pin_index])
                    for col in ints_flag:
                        if self.mcp_irq_pins[int_pin_index][col].value==False:
                            key_res = self.keymap[row][col+self.mcp_irq_pins_count[int_pin_index]]
                            yield(key_res)
                    self.int_clears[int_pin_index]()
            self.row_pins[row].direction = Direction.INPUT
            self.row_pins[row].pull = Pull.UP

    def _led_i2c(self,cl,da,dots=1):
        dotstar_string = adafruit_dotstar.DotStar(cl,da,dots,brightness=0)
        return(dotstar_string)

    def setup_hid_devices(self):
        self.kbd = [
            Keyboard(usb_hid.devices),
            Keyboard(usb_hid.devices),
            Keyboard(usb_hid.devices),
            Keyboard(usb_hid.devices),
            Keyboard(usb_hid.devices),
            Keyboard(usb_hid.devices)
        ]
        self.cc = ConsumerControl(usb_hid.devices)

    def pick_hid(self,cc=False): # This doesn't send releases to the correct hid device, we might also be asking to press more keys than the hid has left
        if cc==True:
            return(self.cc)
        elif cc==False:
            for hid in self.kbd:
                for item in hid.report_keys:
                    if item==0:
                        return(hid)


    def update_hid(self,key_data,release=False):
        if type(key_data)==type((None,None)):
            (key_type,keycodes) = key_data
        else:
            key_type = KeyTypes.KEY
            keycodes = key_data
        if key_type==KeyTypes.MEDIA:
            if release==False:
                self.cc.press(keycodes)
            if release==True:
                self.cc.release()
        if key_type==KeyTypes.KEY:
            if release==False:
                self.pick_hid().press(*keycodes)
            if release==True:
                self.pick_hid().release(*keycodes)

    def setup_led_strings(self):
        allowed_brightness = self.led_brightness()
        for i in range(0,len(self.led_i2c)):
            self.led_i2c[i].brightness = allowed_brightness

    def _setup_irq_pins(self):
        for pin in self.int_pins:
            pin.direction = Direction.INPUT
            pin.pull = Pull.DOWN
            del pin

    def _enable_mcp_irq(self,device):
        self.mcp(device).interrupt_enable = 0xFFFF
        self.mcp(device).interrupt_configuration = 0x0000
        self.mcp(device).io_control = 0x40 # These need to be set to push-pull and not open drain on bit 2
        self.mcp(device).clear_ints()

    def _setup_key_mcp(self,device):
        if device==0:
            for pin in self.col_pins[0:7]+self.row_pins:
                pin.direction = Direction.INPUT
                pin.pull = Pull.UP
                del pin
        elif device==1:
            for pin in self.col_pins[7:]:
                pin.direction = Direction.INPUT
                pin.pull = Pull.UP
                del pin
        self._enable_mcp_irq(device)
