import board
from digitalio import DigitalInOut, Direction, Pull
from adafruit_hid.keycode import Keycode
from adafruit_hid.consumer_control_code import ConsumerControlCode
from adafruit_mcp230xx.mcp23017 import MCP23017

from pycokeeb.keytypes import KeyTypes,meta_key_enum
from pycokeeb.pinconfig import PinConfig

class KeyMap(PinConfig):

    def load_keymap(self):
        self.keymap = [
            [Keycode.ESCAPE, Keycode.F1, Keycode.F2, Keycode.F3, Keycode.F4, Keycode.F5, Keycode.F6, Keycode.F7, Keycode.F8, Keycode.F9, Keycode.F10, Keycode.F11, Keycode.F12, Keycode.PRINT_SCREEN, Keycode.PAUSE, Keycode.SCROLL_LOCK, [KeyTypes.MEDIA,402], [KeyTypes.MEDIA,205], [KeyTypes.MEDIA,182], [KeyTypes.MEDIA,181], None],
            [Keycode.GRAVE_ACCENT, Keycode.ONE, Keycode.TWO, Keycode.THREE, Keycode.FOUR, Keycode.FIVE, Keycode.SIX, Keycode.SEVEN, Keycode.EIGHT, Keycode.NINE, Keycode.ZERO, Keycode.MINUS, Keycode.EQUALS, Keycode.BACKSPACE, Keycode.INSERT, Keycode.HOME, Keycode.PAGE_UP, [KeyTypes.META_KEY,meta_key_enum.function], Keycode.KEYPAD_FORWARD_SLASH, Keycode.KEYPAD_ASTERISK, Keycode.KEYPAD_MINUS],
            [Keycode.TAB, Keycode.Q, Keycode.W, Keycode.E, Keycode.R, Keycode.T, Keycode.Y, Keycode.U, Keycode.I, Keycode.O, Keycode.P, Keycode.LEFT_BRACKET, Keycode.RIGHT_BRACKET, Keycode.BACKSLASH, None, None, None, None, None, None, None],
            [Keycode.CAPS_LOCK, Keycode.A, Keycode.S, Keycode.D, Keycode.F, Keycode.G, Keycode.H, Keycode.J, Keycode.K, Keycode.L, Keycode.SEMICOLON, Keycode.QUOTE, Keycode.ENTER, None, Keycode.DELETE, Keycode.END, Keycode.PAGE_DOWN, Keycode.KEYPAD_SEVEN, Keycode.KEYPAD_EIGHT, Keycode.KEYPAD_NINE, None],
            [Keycode.LEFT_SHIFT, Keycode.Z, Keycode.X, Keycode.C, Keycode.V, Keycode.B, Keycode.N, Keycode.M, Keycode.COMMA, Keycode.PERIOD, Keycode.FORWARD_SLASH, Keycode.RIGHT_SHIFT, None, None, Keycode.KEYPAD_FOUR, Keycode.KEYPAD_FIVE, Keycode.KEYPAD_SIX, Keycode.KEYPAD_PLUS, None, None, None],
            [Keycode.LEFT_CONTROL, Keycode.LEFT_GUI, Keycode.LEFT_ALT, Keycode.SPACE, Keycode.RIGHT_ALT, Keycode.RIGHT_GUI, [KeyTypes.META_KEY,meta_key_enum.function], Keycode.RIGHT_CONTROL, None, None, None, None, None, Keycode.UP_ARROW, Keycode.KEYPAD_ONE, Keycode.KEYPAD_TWO, Keycode.KEYPAD_THREE, None, None, None, None],
            [None, None, None, None, None, None, None, None, None, None, None, None, Keycode.LEFT_ARROW, Keycode.DOWN_ARROW, Keycode.RIGHT_ARROW, Keycode.KEYPAD_ZERO, Keycode.KEYPAD_PERIOD, Keycode.KEYPAD_ENTER, None, None, None]
        ]

        # self.switches = [0, 1, 2, 3, 4, 5, 6,
                    # 7, 8, 9, 10, 11, 12, 13,
                    # 14, 15, 16, 17, 18, 19, 20, 21]

        # for i in range(len(self.switches)-1):
            # self.switches[i] = DigitalInOut(self.pins[i])
            # self.switches[i].direction = Direction.INPUT
            # self.switches[i].pull = Pull.UP
