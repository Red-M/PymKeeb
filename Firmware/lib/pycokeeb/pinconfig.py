import board
import busio
from digitalio import DigitalInOut, Direction, Pull
from adafruit_hid.keycode import Keycode
from adafruit_hid.consumer_control_code import ConsumerControlCode

from pycokeeb.basekeeb import BaseKeeb

class PinConfig(BaseKeeb):

    def _dpin(self,pin):
        return(DigitalInOut(pin))

    def init_pins(self):
        if self.key_matrix_enabled==True:
            self._setup_key_pins()
        if self.leds_enabled==True:
            self.setup_led_strings()

    def pin_setup(self):
        if self.key_matrix_enabled==True:
            # self.row_pins = [ #Rows 0 to 6
                # self._dpin(board.D0),
                # self._dpin(board.D1),
                # self._dpin(board.D2),
                # self._dpin(board.D3),
                # self._dpin(board.D4),
                # self._dpin(board.D5),
                # self._dpin(board.D6)
            # ]
            # self.col_pins = [ #Cols 0 to 20
                # self._dpin(board.D7),
                # self._dpin(board.D8),
                # self._dpin(board.D9),
                # self._dpin(board.D10),
                # self._dpin(board.D12),
                # self._dpin(board.D26),
                # self._dpin(board.D27),
                # self._dpin(board.D28),
                # self._dpin(board.D29),
                # self._dpin(board.D30),
                # self._dpin(board.D31),
                # self._dpin(board.D32),
                # self._dpin(board.D23),
                # self._dpin(board.D22),
                # self._dpin(board.D21),
                # self._dpin(board.D20),
                # self._dpin(board.D19),
                # self._dpin(board.D18),
                # self._dpin(board.D17),
                # self._dpin(board.D16),
                # self._dpin(board.D15)
            # ]
            self.row_pins = [ #Rows 0 to 6
                self._dpin(board.D1),
                self._dpin(board.D0),
                self._dpin(board.D3),
                self._dpin(board.D2),
                self._dpin(board.D5),
                self._dpin(board.D4),
                self._dpin(board.D7)
            ]
            self.col_pins = [ #Cols 0 to 20
                self._dpin(board.D6),
                self._dpin(board.D9),
                self._dpin(board.D8),
                self._dpin(board.D12),
                self._dpin(board.D10),
                self._dpin(board.D27),
                self._dpin(board.D26),
                self._dpin(board.D29),
                self._dpin(board.D28),
                self._dpin(board.D31),
                self._dpin(board.D30),
                self._dpin(board.D23),
                self._dpin(board.D32),
                self._dpin(board.D21),
                self._dpin(board.D22),
                self._dpin(board.D19),
                self._dpin(board.D20),
                self._dpin(board.D15),
                self._dpin(board.D18),
                self._dpin(board.D17),
                self._dpin(board.D16)
            ]
        self.row_len = len(self.row_pins)
        self.col_len = len(self.col_pins)
        self.row_range = range(self.row_len)
        self.col_range = range(self.col_len)
        if self.leds_enabled==True:
            self.led_spi = [
                self._led_spi(board.D25,board.D24,4),
                self._led_spi(board.D11,board.D13,110)
            ]
        if self.screen_enabled==True:
            self.screen_spi = self._screen_spi(board.D37,board.D36,board.D35,board.D34,board.D33)
