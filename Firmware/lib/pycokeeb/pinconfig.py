import board
import busio
from digitalio import DigitalInOut, Direction, Pull
from adafruit_hid.keycode import Keycode
from adafruit_hid.consumer_control_code import ConsumerControlCode

from pycokeeb.basekeeb import BaseKeeb

class PinConfig(BaseKeeb):

    def init_pins(self):
        if self.key_matrix_enabled==True:
            self._setup_key_pins()
        if self.leds_enabled==True:
            self.setup_led_strings()

    def pin_setup(self):
        try:
            self.pico_33_ref = DigitalInOut(board.GP2)
            self.pico_33_ref.direction = Direction.OUTPUT
            self.pico_33_ref.value = True
        except:
            pass
        if self.key_matrix_enabled==True:
            self.row_pins = [
                DigitalInOut(board.D0), #Rows 0 to 6
                DigitalInOut(board.D1),
                DigitalInOut(board.D2),
                DigitalInOut(board.D3),
                DigitalInOut(board.D4),
                DigitalInOut(board.D5),
                DigitalInOut(board.D6)
            ]
            self.col_pins = [
                DigitalInOut(board.D7), #Cols 0 to 20
                DigitalInOut(board.D8),
                DigitalInOut(board.D9),
                DigitalInOut(board.D10),
                DigitalInOut(board.D12),
                DigitalInOut(board.D26),
                DigitalInOut(board.D27),
                DigitalInOut(board.D28),
                DigitalInOut(board.D29),
                DigitalInOut(board.D30),
                DigitalInOut(board.D31),
                DigitalInOut(board.D32),
                DigitalInOut(board.D23),
                DigitalInOut(board.D22),
                DigitalInOut(board.D21),
                DigitalInOut(board.D20),
                DigitalInOut(board.D19),
                DigitalInOut(board.D18),
                DigitalInOut(board.D15),
                DigitalInOut(board.D16),
                DigitalInOut(board.D17)
            ]
        self.row_len = len(self.row_pins)
        self.col_len = len(self.col_pins)
        self.row_range = range(self.row_len)
        self.col_range = range(self.col_len)
        if self.leds_enabled==True:
            self.led_spi = [
                self._led_spi(board.GP10,board.GP11,1),
                self._led_spi(board.GP14,board.GP15,13)
                # self._led_spi(board.GP10,board.GP11,4),
                # self._led_spi(board.GP14,board.GP15,110)
            ]
        if self.screen_enabled==True:
            self.screen_spi = self._screen_spi(board.GP18,board.GP19,board.GP16,board.GP17,board.GP20)
