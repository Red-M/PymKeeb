import time
import board
import tasko
from digitalio import DigitalInOut, Direction, Pull
from pycokeeb.keymap import KeyMap
from pycokeeb.leds import LEDs
from pycokeeb.screen import Screen

class PycoKeeb(KeyMap):
    def __init__(self):
        self.USB_mA_total = 500 # replace this with the actual USB budget defined when plugged in
        self.debounce_time = 0.001 # Let the IO expander think about it!
        self.key_matrix_enabled = False
        self.leds_enabled = True
        self.screen_enabled = False
        self.i2c_baud = 950000
        self.spi_baud = 10000000
        self.led_spi_baud = 10000000
        self.screen_spi_baud = 24000000
        self.key_refresh = 2000
        self.led_refresh = 15
        self.screen_refresh = 15
        self.type_array = type([])
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
        if self.leds_enabled==True:
            self.leds = LEDs(self)
        if self.screen_enabled==True:
            self.screen = Screen(self)
        self.main()

    def poll_keys(self):
        keys = self.check_keys()
        release_keys = []
        for item in self.last_loopstep_keys:
            if item not in keys:
                release_keys.append(item)
        if len(keys)>0:
            print("Pressed: ", keys)
            # self.update_hid(keys)
        if len(release_keys)>0:
            print("Released: ", release_keys)
            # self.update_hid(release_keys,True)
        self.last_loopstep_keys = keys

    async def co_check_keys(self):
        print('keys')
        # self.starttimer()
        self.poll_keys()
        # self.endtimer()
        await tasko.sleep(1/self.key_refresh)

    async def co_led_management(self):
        print('leds')
        # self.starttimer()
        await self.leds.main()
        # self.endtimer()
        # await tasko.sleep(1/self.led_refresh)

    async def co_screen_management(self):
        print('screen')
        # self.starttimer()
        await self.screen.main()
        # self.endtimer()
        # await tasko.sleep(1/self.screen_refresh)

    def main(self):
        # self.led_i2c[0].fill((255,0,0))
        # self.led_i2c[0].show()
        # self.led_i2c[1].fill((255,0,0))
        # self.led_i2c[1].show()

        self.last_loopstep_keys = []

        if self.key_matrix_enabled==True:
            tasko.schedule(hz=self.key_refresh, coroutine_function=self.co_check_keys)
        if self.leds_enabled==True:
            tasko.schedule(hz=self.led_refresh, coroutine_function=self.co_led_management)
        if self.screen_enabled==True:
            tasko.schedule(hz=self.screen_refresh, coroutine_function=self.co_screen_management)
        tasko.run()
