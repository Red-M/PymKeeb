import time
import random
import tasko
from adafruit_hid.keyboard import Keyboard

class LEDs():
    def __init__(self,keeb):
        self.keeb = keeb
        self.status_keys = {
            0: Keyboard.LED_NUM_LOCK,
            1: Keyboard.LED_CAPS_LOCK
        }
        for dotstring in self.keeb.led_spi:
            for dot in range(dotstring.n):
                dotstring[dot] = (0, 0, 0)
            dotstring.show()

        self.dotstring_status = self.keeb.led_spi[0]
        self.dotstring_keys = self.keeb.led_spi[1]
        for dot in range(self.dotstring_keys.n):
            self.dotstring_keys[dot] = (255, 0, 0)
        self.dotstring_keys.show()
        # self.dotstring_status.auto_write = True

    def random_color(self):
        return(random.randrange(0, 255),random.randrange(0, 255),random.randrange(0, 255))

    async def main(self):
        for status_light in self.status_keys:
            status_key = self.status_keys[status_light]
            if self.keeb.kbd.led_on(status_key)==True:
                self.dotstring_status[status_light] = (255, 0, 0)
            else:
                self.dotstring_status[status_light] = (0, 0, 0)
        self.dotstring_status.show()
        await tasko.sleep(1/self.keeb.led_refresh)

        # for dot in range(self.dotstring_keys.n):
            # self.dotstring_keys[dot] = self.random_color()
            # self.dotstring_keys[dot] = (255, 0, 0)
            # self.dotstring_keys.show()
            # await tasko.sleep(1/self.keeb.led_refresh)
        # self.dotstring_keys[0] = self.random_color()
        # self.dotstring_keys.show()
    # await tasko.sleep(1/self.keeb.led_refresh)
