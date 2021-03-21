import board
import busio
from digitalio import DigitalInOut, Direction, Pull
from adafruit_hid.keycode import Keycode
from adafruit_hid.consumer_control_code import ConsumerControlCode
from adafruit_mcp230xx.mcp23008 import MCP23017

from pycokeeb.basekeeb import BaseKeeb

class PinConfig(BaseKeeb):
    def pin_setup(self):
        self.pico_33_ref = DigitalInOut(board.GP2)
        self.pico_33_ref.direction = Direction.OUTPUT
        self.pico_33_ref.pull = Pull.UP
        self.i2c = busio.I2C(board.GP0, board.GP1)
        self._mcp = [
            MCP23017(i2c,address=0x20),
            MCP23017(i2c,address=0x21),
            MCP23017(i2c,address=0x22)
        ]
        self._setup_key_mcp(0)
        self._setup_key_mcp(1)
        self.int_pins = [
            DigitalInOut(board.GP5),
            DigitalInOut(board.GP4),
            DigitalInOut(board.GP7),
            DigitalInOut(board.GP6)
        ]
        self.rows = [
            self._mcp_pin(0,9), #Rows 0 to 6
            self._mcp_pin(0,10),
            self._mcp_pin(0,11),
            self._mcp_pin(0,12),
            self._mcp_pin(0,13),
            self._mcp_pin(0,14),
            self._mcp_pin(0,15)
        ]
        self.cols = [
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
        self.led_i2c = [
            self._led_i2c(2,1,0,20), #LED I2Cs 0 to 7
            self._led_i2c(2,3,2,21),
            self._led_i2c(2,5,4,14),
            self._led_i2c(2,7,6,19),
            self._led_i2c(2,9,8,16),
            self._led_i2c(2,11,10,12),
            self._led_i2c(2,13,12,6),
            self._led_i2c(2,15,14,4)
        ]
        self.mcp_irq_pins = [
            self.cols[0:6], #This maps interrupt pins in self.int_pins to mcp pins in self.rows and self.cols
            self.rows,
            self.cols[7:14],
            self.cols[15:21]
        ]