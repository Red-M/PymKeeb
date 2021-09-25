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
from adafruit_hid.keyboard import Keyboard, find_device
from adafruit_hid.keycode import Keycode
from adafruit_hid.consumer_control import ConsumerControl
from adafruit_hid.consumer_control_code import ConsumerControlCode
from pycokeeb.keytypes import KeyTypes,meta_key_enum

class HybridKeyboard(Keyboard):
    def __init__(self, devices):
        for device in devices:
            if device.usage == 6 and device.usage_page == 1:
                try:
                    device.send_report(b'\0' * 24)
                except ValueError:
                    print("found device but could not send report")
                    for length in range(256):
                        try:
                            device.send_report(b'\0' * length)
                            print("sent", length)
                        except ValueError:
                            print("fail", length)
                    continue
                self._keyboard_device = device
                break
        else:
            raise ValueError("Could not find a HID keyboard device.")

        # report[0] modifiers
        # report[2:8] boot keyboard
        # report[16:24] regular key presses bitmask
        self.report = bytearray(24)

        self.report_modifier = memoryview(self.report)[0:1]
        self.report_keys = memoryview(self.report)[2:8]
        self.report_bitmap = memoryview(self.report)[8:]

    def _add_keycode_to_report(self, keycode):
        modifier = Keycode.modifier_bit(keycode)
        # print (f"{keycode:02x} {modifier:02x}")
        if modifier:
            # Set bit for this modifier.
            self.report_modifier[0] |= modifier
        else:
            for i in range(len(self.report_keys)):
                pressed = self.report_keys[i]
                if pressed == 0: # found an empty slot
                    self.report_keys[i] = keycode
                    break
                elif pressed == keycode: # already pressed(!)
                    break
            else:
                # "Expire" the oldest key by moving others down
                for i in range(5):
                    self.report_keys[i] = self.report_keys[i+1]
                # Add the new key
                self.report_keys[5] = keycode
            self.report_bitmap[keycode >> 3] |= 1 << (keycode & 0x7)

    def _remove_keycode_from_report(self, keycode):
        modifier = Keycode.modifier_bit(keycode)
        if modifier:
            # Set bit for this modifier.
            self.report_modifier[0] &= ~modifier
        else:
            j = 0
            for i in range(len(self.report_keys)):
                pressed = self.report_keys[i]
                if pressed == 0 or pressed == keycode:
                    continue # Remove this entry
                self.report_keys[j] = self.report_keys[i]
                j += 1
            # Clear any remaining slots
            while j < len(self.report_keys):
                self.report_keys[j] = 0
                j += 1
            self.report_bitmap[keycode >> 3] &= ~(1 << (keycode & 0x7))

    def release_all(self):
        for i in range(len(self.report)):
            self.report[i] = 0
        self._keyboard_device.send_report(self.report)

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
                    # print(str(row)+','+str(col))
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
        # dotstar_string = adafruit_dotstar.DotStar(cl,da,dots,brightness=0,auto_write=False)
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
        keyboard_types = {
            8: Keyboard,
            24: HybridKeyboard
        }

        keyboard_device = find_device(usb_hid.devices,usage_page=0x1,usage=0x6)
        for (report_length,constructor) in keyboard_types.items():
            try:
                keyboard_device.send_report(bytearray(report_length))
            except:
                continue
            else:
                kbd = constructor([keyboard_device])
                break
        else:
            raise(ValueError("Could not find matching keyboard device"))
        self.kbd = kbd
        self.cc = ConsumerControl(usb_hid.devices)

    def pick_hid(self,cc=False):
        if cc==True:
            return(self.cc)
        elif cc==False:
            return(self.kbd)


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
                self.kbd.press(*keycodes)
            if release==True:
                self.kbd.release(*keycodes)

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
