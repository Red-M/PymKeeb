import board
from digitalio import DigitalInOut, Direction, Pull
from adafruit_hid.keycode import Keycode
from adafruit_hid.consumer_control_code import ConsumerControlCode
from adafruit_mcp230xx.mcp23017 import MCP23017

from pycokeeb.keytypes import KeyTypes
from pycokeeb.pinconfig import PinConfig

class KeyMap(PinConfig):

    def config(self):
        # self.keymap = {
        # }
        self.keymap = (
            (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21),
            (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21),
            (1, Keycode.Q, Keycode.W, Keycode.E, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21),
            (22, Keycode.A, Keycode.S, Keycode.D, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42),
            (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21),
            (1, 2, 3, Keycode.SPACE, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21),
            (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21)
        )

        # self.switches = [0, 1, 2, 3, 4, 5, 6,
                    # 7, 8, 9, 10, 11, 12, 13,
                    # 14, 15, 16, 17, 18, 19, 20, 21]

        # for i in range(len(self.switches)-1):
            # self.switches[i] = DigitalInOut(self.pins[i])
            # self.switches[i].direction = Direction.INPUT
            # self.switches[i].pull = Pull.UP
