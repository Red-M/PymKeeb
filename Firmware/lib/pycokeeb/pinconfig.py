import board
import busio
from digitalio import DigitalInOut, Direction, Pull
from adafruit_hid.keycode import Keycode
from adafruit_hid.consumer_control_code import ConsumerControlCode
from adafruit_mcp230xx.mcp23s17 import MCP23S17

from pycokeeb.basekeeb import BaseKeeb

class PinConfig(BaseKeeb):

    def init_pins(self):
        if self.key_matrix_enabled==True:
            self._setup_irq_pins()
            self._setup_key_mcp(0)
            self._setup_key_mcp(1)
        if self.leds_enabled==True:
            self.setup_led_strings()

    def pin_setup(self):
        try:
            self.pico_33_ref = DigitalInOut(board.GP2)
            self.pico_33_ref.direction = Direction.OUTPUT
            self.pico_33_ref.value = True
        except:
            pass
        self.key_count = 108
        if self.key_matrix_enabled==True:
            self.spi = busio.SPI(clock=board.GP10, MOSI=board.GP11, MISO=board.GP12)
            self._mcp = [
                MCP23S17(self.spi,board.GP0,address=0x20,baudrate=self.spi_baud),
                MCP23S17(self.spi,board.GP1,address=0x21,baudrate=self.spi_baud)
            ]
            self.int_pins = [
                DigitalInOut(board.GP4),
                DigitalInOut(board.GP5),
                DigitalInOut(board.GP6),
                DigitalInOut(board.GP7)
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
            self.mcp_irq_pins = [
                self.col_pins[:7], #This maps interrupt pins in self.int_pins to mcp pins in self.rows and self.cols
                self.row_pins,
                self.col_pins[7:14],
                self.col_pins[14:]
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
            self.gpios = [
                self._mcp_gpioa,
                self._mcp_gpiob,
                self._mcp_gpioa,
                self._mcp_gpiob
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
        if self.leds_enabled==True:
            self.led_spi = [
                self._led_spi(board.GP10,board.GP11,1),
                self._led_spi(board.GP14,board.GP15,13)
                # self._led_spi(board.GP10,board.GP11,4),
                # self._led_spi(board.GP14,board.GP15,110)
            ]
        if self.screen_enabled==True:
            self.screen_spi = self._screen_spi(board.GP18,board.GP19,board.GP16,board.GP17,board.GP20)
