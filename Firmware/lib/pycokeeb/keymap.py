import board
from digitalio import DigitalInOut, Direction, Pull
from adafruit_hid.keycode import Keycode
from adafruit_hid.consumer_control_code import ConsumerControlCode
from adafruit_mcp230xx.mcp23008 import MCP23017

from pycokeeb.keytypes import KeyTypes
from pycokeeb.pinconfig import PinConfig

class KeyMap(PinConfig):
    def _mcp_pin(device,pin):
        return(self.mcp[device].get_pin(pin))

    def _led_i2c(device,cl,da):
        return(busio.I2C(self._mcp_pin(device,cl), self._mcp_pin(device,da)))

    def config(self):

        self.keymap = {
        }

        # self.switches = [0, 1, 2, 3, 4, 5, 6,
                    # 7, 8, 9, 10, 11, 12, 13,
                    # 14, 15, 16, 17, 18, 19, 20, 21]

        # for i in range(len(self.switches)-1):
            # self.switches[i] = DigitalInOut(self.pins[i])
            # self.switches[i].direction = Direction.INPUT
            # self.switches[i].pull = Pull.UP
