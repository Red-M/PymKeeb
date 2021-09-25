import time
import random
import tasko

class LEDs():
    def __init__(self,keeb):
        self.keeb = keeb
        for dotstring in self.keeb.led_spi:
            for dot in range(dotstring.n):
                dotstring[dot] = (255, 0, 0)
            dotstring.show()

    def random_color(self):
        return(random.randrange(0, 255),random.randrange(0, 255),random.randrange(0, 255))

    async def main(self):
        pass
        # for dotstring in self.keeb.led_spi:
            # for dot in range(dotstring.n):
                # dotstring[dot] = self.random_color()
                # dotstring[dot] = (255, 0, 0)
                # dotstring.show()
                # await tasko.sleep(1/self.keeb.led_refresh)
            # dotstring[0] = self.random_color()
            # dotstring.show()
        # await tasko.sleep(1/self.keeb.led_refresh)
        # await tasko.sleep(1)
