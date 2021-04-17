import time
import board
import tasko
from digitalio import DigitalInOut, Direction, Pull
from pycokeeb.keymap import KeyMap
from pycokeeb.leds import LEDs

class PycoKeeb(KeyMap):
    def __init__(self):
        self.USB_mA_total = 500 # replace this with the actual USB budget defined when plugged in
        self.debounce_time = 0.00001 # Let the IO expander think about it!
        print("RedPycoKeeb")

        try:
            self.led = DigitalInOut(board.LED)
            self.led.direction = Direction.OUTPUT
            self.led.value = True
        except:
            pass

        self.setup_hid_devices()
        self.pin_setup()
        self.init_pins()
        self.load_keymap()
        self.leds = LEDs(self)
        self.main()

    async def co_check_keys(self):
        keys = self.check_keys()
        pressed_keys = [item for item in keys if item not in self.last_loopstep_keys]
        release_keys = [item for item in self.last_loopstep_keys if item not in keys]
        if len(pressed_keys)>0:
            # print("Pressed: ", pressed_keys)
            self.update_hid(pressed_keys)
        if len(release_keys)>0:
            # print("Released: ", release_keys)
            self.update_hid(release_keys,True)
        self.last_loopstep_keys = keys

    async def co_led_management(self):
        self.leds.main()

    def main(self):
        # self.led_i2c[0].fill((255,0,0))
        # self.led_i2c[0].show()
        # self.led_i2c[1].fill((255,0,0))
        # self.led_i2c[1].show()

        self.last_loopstep_keys = []

        tasko.schedule(hz=100, coroutine_function=self.co_check_keys)
        tasko.schedule(hz=60, coroutine_function=self.co_led_management)
        tasko.run()

