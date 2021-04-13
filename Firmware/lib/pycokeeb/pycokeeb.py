import time
import board
from digitalio import DigitalInOut, Direction, Pull
import usb_hid
from adafruit_hid.keyboard import Keyboard
from adafruit_hid.keycode import Keycode
from adafruit_hid.consumer_control import ConsumerControl
from adafruit_hid.consumer_control_code import ConsumerControlCode

from pycokeeb.keymap import KeyMap
from pycokeeb.keytypes import KeyTypes

import adafruit_matrixkeypad

class PycoKeeb(KeyMap):
    def __init__(self):
        self.USB_mA_total = 500 # replace this with the actual USB budget defined when plugged in
        self.debounce_time = 0.01
        print("RedPycoKeeb")

        try:
            self.led = DigitalInOut(board.LED)
            self.led.direction = Direction.OUTPUT
            self.led.value = True
        except:
            pass

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
        self.pin_setup()
        self.init_pins()
        self.config()
        self.main()

    def main(self):
        self.led_i2c[0].fill((255,0,0))
        self.led_i2c[0].show()
        self.led_i2c[1].fill((255,0,0))
        self.led_i2c[1].show()

        last_step_keys = []
        while True:
            keys = self.check_keys()
            if len(keys)>0:
                print("Pressed: ", keys)
                # self.kbd[0].press(*keys)
            release_keys = [item for item in last_step_keys if item not in keys]
            if len(release_keys)>0:
                print("Released: ", release_keys)
                # self.kbd[0].release(*release_keys)
            last_step_keys = keys

