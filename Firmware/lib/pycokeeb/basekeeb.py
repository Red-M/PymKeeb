import board
import time
import busio
import adafruit_dotstar
import tasko
from digitalio import DigitalInOut, Direction, Pull
from adafruit_bus_device.i2c_device import I2CDevice
from adafruit_bus_device.spi_device import SPIDevice
import displayio
from adafruit_st7789 import ST7789

import usb_hid
from adafruit_hid.keyboard import Keyboard
from adafruit_hid.keycode import Keycode
from adafruit_hid.consumer_control import ConsumerControl
from adafruit_hid.consumer_control_code import ConsumerControlCode
from pycokeeb.keytypes import KeyTypes,meta_key_enum


class BaseKeeb():

    def starttimer(self):
        self.timer_start = time.monotonic()
    def endtimer(self):
        print(float(time.monotonic()-self.timer_start)*1000)

    def get_led_count(self):
        total = 0
        for i in range(0,len(self.led_spi)):
            total+=self.led_spi[i].n
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

    def check_keys(self):
        keys = []
        for row in self.row_range:
            self.row_pins[row].switch_to_output(False)
            for col in self.col_range:
                pin = self.col_pins[col]
                if pin.value==False:
                    key_res = self.keymap[row][col]
                    if key_res==None:
                        continue
                    if isinstance(key_res,self.type_array):
                        (key_type,keycode) = key_res
                        if key_type==KeyTypes.FUNC:
                            continue # Call for magic keys
                    else:
                        keycode = key_res
                    keys.append(keycode)
            self.row_pins[row].switch_to_output(True)
        return(keys)

    def _led_spi(self,cl,da,dots=1):
        dotstar_string = adafruit_dotstar.DotStar(cl,da,dots,brightness=0,baudrate=self.led_spi_baud,auto_write=False)
        # dotstar_string = adafruit_dotstar.DotStar(cl,da,dots,brightness=0,baudrate=self.led_spi_baud,auto_write=True)
        return(dotstar_string)

    def _screen_spi(self,clk,mosi,miso,cs,dc):
        displayio.release_displays()
        if self.screen_enabled==False:
            return(None)
        spi = busio.SPI(clock=clk,MOSI=mosi,MISO=miso)
        display_bus = displayio.FourWire(spi,command=dc,chip_select=cs,baudrate=self.screen_spi_baud)
        return(ST7789(display_bus,width=320,height=240,rotation=270))

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
            return(self.kbd[0])
            # for hid in self.kbd:
                # for item in hid.report_keys:
                    # if item==0:
                        # return(hid)


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
        print(allowed_brightness)
        for i in range(0,len(self.led_spi)):
            self.led_spi[i].brightness = allowed_brightness

    def _setup_key_pins(self):
        for pin in self.row_pins:
            pin.switch_to_input(Pull.DOWN)
            del pin
        for pin in self.col_pins:
            pin.switch_to_input(Pull.UP)
            del pin
