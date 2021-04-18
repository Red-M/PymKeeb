import board
import busio
from digitalio import DigitalInOut, Direction, Pull
from adafruit_hid.keycode import Keycode
from adafruit_hid.consumer_control_code import ConsumerControlCode
from adafruit_mcp230xx.mcp23017 import MCP23017

from pycokeeb.basekeeb import BaseKeeb

class PinConfig(BaseKeeb):

    def init_pins(self):
        self._setup_irq_pins()
        self._setup_key_mcp(0)
        self._setup_key_mcp(1)
        self.setup_led_strings()

    def pin_setup(self):
        try:
            self.pico_33_ref = DigitalInOut(board.GP2)
            self.pico_33_ref.direction = Direction.OUTPUT
            self.pico_33_ref.value = True
        except:
            pass
        self.key_count = 108
        self.screen_enabled = False
        self.i2c = busio.I2C(scl=board.GP1, sda=board.GP0)
        self._mcp = [
            MCP23017(self.i2c,address=0x20),
            MCP23017(self.i2c,address=0x21)
        ]
        self.int_pins = [
            DigitalInOut(board.GP5),
            DigitalInOut(board.GP4),
            DigitalInOut(board.GP7),
            DigitalInOut(board.GP6)
        ]
        self.row_pins = [
            self._mcp_pin(0,8), #Rows 0 to 6
            self._mcp_pin(0,9),
            self._mcp_pin(0,10),
            self._mcp_pin(0,11),
            self._mcp_pin(0,12),
            self._mcp_pin(0,13),
            self._mcp_pin(0,14)
        ]
        self.col_pins = [
            self._mcp_pin(0,0), #Cols 0 to 20
            self._mcp_pin(0,1),
            self._mcp_pin(0,2),
            self._mcp_pin(0,3),
            self._mcp_pin(0,4),
            self._mcp_pin(0,5),
            self._mcp_pin(0,6),
            self._mcp_pin(1,0),
            self._mcp_pin(1,1),
            self._mcp_pin(1,2),
            self._mcp_pin(1,3),
            self._mcp_pin(1,4),
            self._mcp_pin(1,5),
            self._mcp_pin(1,6),
            self._mcp_pin(1,8),
            self._mcp_pin(1,9),
            self._mcp_pin(1,10),
            self._mcp_pin(1,11),
            self._mcp_pin(1,12),
            self._mcp_pin(1,13),
            self._mcp_pin(1,14)
        ]
        self.rows = [ #This maps MCP to if they are connected then if they are a row pin
            [
            False,
            False,
            False,
            False,
            False,
            False,
            False,
            None,
            True,
            True,
            True,
            True,
            True,
            True,
            True,
            None
            ],[
            False,
            False,
            False,
            False,
            False,
            False,
            False,
            False,
            False,
            None,
            False,
            False,
            False,
            False,
            False,
            None
            ]
        ]
        self.led_i2c = [
            # self._led_i2c(board.GP15,board.GP14,112),
            self._led_i2c(board.GP11,board.GP10,4),
            self._led_i2c(board.GP15,board.GP14,110),
        ]
        self.mcp_irq_pins = [
            self.col_pins[0:7], #This maps interrupt pins in self.int_pins to mcp pins in self.rows and self.cols
            self.row_pins,
            self.col_pins[7:14],
            self.col_pins[15:]
        ]
        self.mcp_irq_pins_count = [
            0, #This maps interrupt pins in self.int_pins to pin offset counts to get the correct column index for the keymap
            None,
            len(self.mcp_irq_pins[0]),
            len(self.mcp_irq_pins[0]+self.mcp_irq_pins[2])
        ]
        self.int_clears = [
            self.mcp(0).clear_inta,
            self.mcp(0).clear_intb,
            self.mcp(1).clear_inta,
            self.mcp(1).clear_intb
        ]
        self.int_flags = [
            self._mcp_int_flaga,
            self._mcp_int_flagb,
            self._mcp_int_flaga,
            self._mcp_int_flagb
        ]
        self.int_pins_to_mcp = [
            0, #This maps int pins to MCP device number
            0,
            1,
            1
        ]
