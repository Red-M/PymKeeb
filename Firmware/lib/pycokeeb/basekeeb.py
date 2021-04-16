import board
import time
import busio
import adafruit_dotstar
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

    def mcp_pin_check_and_shift(self,device,ints,col=None):
        if col==None:
            col = False
        output = []
        for interrupt in ints:
            if col==True:
                res = self.rows[device][interrupt]
                if res!=None:
                    res = not res
            elif col==False:
                res = self.rows[device][interrupt]
            if res==True:
                if col==False: #Translate down due to the pin layout of MCP0
                    interrupt-=8
                output.append(interrupt)
        return(output)

    def int_pins_check(self):
        triggered_pins = []
        for i in range(0,len(self.int_pins)):
            pin = self.int_pins[i]
            pin_value = not pin.value
            if pin_value==True:
                triggered_pins.append(i)
        return(triggered_pins)

    def row_pins_check(self):
        for row in self.row_pins:
            row.direction = Direction.INPUT
            del row
        time.sleep(0.005)
        for row in self.row_pins:
            row.direction = Direction.OUTPUT
            # row.value = False
            del row

    def col_check(self,device,ints):
        return(self.mcp_pin_check_and_shift(device,ints,True))

    def row_check(self,device,ints):
        return(self.mcp_pin_check_and_shift(device,ints))

    def check_keys(self):
        pressed = []
        for pin in self.row_pins:
            pin.direction = Direction.INPUT
            pin.pull = Pull.UP
        # time.sleep(self.debounce_time)
        for row in range(len(self.row_pins)):
            time.sleep(self.debounce_time)
            self.row_pins[row].direction = Direction.OUTPUT
            self.row_pins[row].value = False
            # if self.int_pins[1].value==False:
            col_offset_pin_index = 0
            for int_pin in range(len(self.int_pins)):
                if int_pin!=1 and self.int_pins[int_pin].value==False:
                    ints_flag = self.mcp(self.int_pins_to_mcp[int_pin]).int_flag
                    pins_under_int_pin = len(self.mcp_irq_pins[int_pin])
                    col_offset_pin_index+=pins_under_int_pin
                    for col in range(0,pins_under_int_pin):
                        if self.mcp_irq_pins[int_pin][col].value==False:
                            key_res = self.keymap[row][col+col_offset_pin_index]
                            if key_res==None:
                                continue
                            if isinstance(key_res,type([])):
                                (key_type,keycode) = key_res
                                if key_type==KeyTypes.META_KEY:
                                    pass # Call for magic keys
                                if key_type==KeyTypes.META_KEY:
                                    pass # Call for magic keys
                            else:
                                keycode = key_res
                            pressed.append(keycode)
            self.row_pins[row].direction = Direction.INPUT
            self.row_pins[row].pull = Pull.UP
        return(pressed)

    def _led_i2c(self,cl,da,dots=1):
        dotstar_sring = adafruit_dotstar.DotStar(cl,da,dots,brightness=0)
        return(dotstar_sring)

    def _setup_irq_pins(self):
        for pin in self.int_pins:
            pin.direction = Direction.INPUT
            pin.pull = Pull.DOWN
            del pin

    def setup_hid_devices(self):
        self.kbd = [
            Keyboard(usb_hid.devices), #24-KRO
            Keyboard(usb_hid.devices),
            Keyboard(usb_hid.devices),
            Keyboard(usb_hid.devices)
        ]
        self.kbd_key_state_count = [
            0,
            0,
            0,
            0
        ]
        self.cc = ConsumerControl(usb_hid.devices)

    def update_hid(self,key_data,release=False):
        if type(key_data)==type((None,None)):
            (key_type,keycodes) = key_data
        else:
            key_type = KeyTypes.KEY
            keycodes = key_data
        if key_type==KeyTypes.MEDIA:
            if release==False:
                cc.press(keycodes)
            if release==True:
                cc.release()
        if key_type==KeyTypes.KEY:
            if release==False:
                self.kbd[0].press(*keycodes)
            if release==True:
                self.kbd[0].release(*keycodes)

    def setup_led_strings(self):
        allowed_brightness = self.led_brightness()
        for i in range(0,len(self.led_i2c)):
            self.led_i2c[i].brightness = allowed_brightness

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
