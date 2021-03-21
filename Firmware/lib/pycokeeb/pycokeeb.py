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

class PycoKeeb(KeyMap):
    def __init__(self):
        self.USB_mA_total = 500 # replace this with the actual USB budget defined when plugged in
        print("RedPycoKeeb")

        self.led = DigitalInOut(board.LED)
        self.led.direction = Direction.OUTPUT
        self.led.value = True

        self.kbd = [
            Keyboard(usb_hid.devices), #24-KRO
            Keyboard(usb_hid.devices),
            Keyboard(usb_hid.devices),
            Keyboard(usb_hid.devices)
        ]
        self.kbd_key_count = [
            0,
            0,
            0,
            0
        ]
        self.cc = ConsumerControl(usb_hid.devices)
        self.pin_setup()
        self.config()
        self.main()

    def main(self):

        while True:

            time.sleep(0.01)
