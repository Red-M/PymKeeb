import time
import board
import asyncio
from digitalio import DigitalInOut, Direction, Pull
from pycokeeb.keymap import KeyMap
from pycokeeb.leds import LEDs
from pycokeeb.screen import Screen

import main_controller

class PycoKeeb(KeyMap):
    def __init__(self):
        self.main_controller = main_controller.main
        self.USB_mA_total = 500 # replace this with the actual USB budget defined when plugged in
        self.key_matrix_enabled = self.main_controller==True and True
        self.leds_enabled = self.main_controller==False and True
        self.screen_enabled = self.main_controller==False and False
        self.i2c_baud = 950000
        self.spi_baud = 9000000
        self.led_spi_baud = 8000000
        self.screen_spi_baud = 24000000
        self.key_refresh = 1000
        self.led_refresh = 15
        self.screen_refresh = 15
        self.type_array = type([])
        print("RedPycoKeeb")

        if self.key_matrix_enabled==True:
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
            # pass
            # print("Pressed: ", keys)
            self.update_hid(keys)
        if len(release_keys)>0:
            # pass
            # print("Released: ", release_keys)
            self.update_hid(release_keys,True)
        self.last_loopstep_keys = keys

    async def co_check_keys(self):
        while True:
            # print('keys')
            # self.starttimer()
            self.poll_keys()
            # self.endtimer('keys')
            await asyncio.sleep(1/self.key_refresh)

    async def co_led_management(self):
        while True:
            # print('leds')
            # self.starttimer()
            await self.leds.main()
            # self.endtimer('leds')
            await asyncio.sleep(1/self.led_refresh)

    async def co_screen_management(self):
        while True:
            # print('screen')
            # self.starttimer()
            await self.screen.main()
            # self.endtimer()
            await asyncio.sleep(1/self.screen_refresh)

    def main(self):

        self.last_loopstep_keys = []

        # if self.key_matrix_enabled==True:
            # asyncio.schedule(hz=self.key_refresh, coroutine_function=self.co_check_keys)
        # if self.leds_enabled==True:
            # asyncio.schedule(hz=self.led_refresh, coroutine_function=self.co_led_management)
        # if self.screen_enabled==True:
            # asyncio.schedule(hz=self.screen_refresh, coroutine_function=self.co_screen_management)
        if self.key_matrix_enabled==True:
            asyncio.create_task(self.co_check_keys())
        if self.leds_enabled==True:
            asyncio.create_task(self.co_led_management())
        if self.screen_enabled==True:
            asyncio.create_task(self.co_screen_management())
        al = asyncio.get_event_loop()
        al.run_forever()
