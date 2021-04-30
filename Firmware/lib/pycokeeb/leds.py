import time
import random
import tasko

class LEDs():
    def __init__(self,keeb):
        self.keeb = keeb

    def random_color(self):
        return(random.randrange(0, 255),random.randrange(0, 255),random.randrange(0, 255))

    async def main(self):
        if self.keeb.leds_enabled==True:
            for dotstring in self.keeb.led_spi:
                self.keeb.starttimer()
                for dot in range(dotstring.n):
                    dotstring[dot] = self.random_color()
                    # dotstring[dot] = (255, 0, 0)
                    # await tasko.sleep(1/self.keeb.led_refresh)
                # dotstring[0] = (self.random_color(), self.random_color(), self.random_color())
                dotstring.show()
                self.keeb.endtimer()
                # await tasko.sleep(1/self.keeb.led_refresh)
                await tasko.sleep(1)
