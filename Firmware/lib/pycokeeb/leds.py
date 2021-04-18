import random
import tasko

class LEDs():
    def __init__(self,keeb):
        self.keeb = keeb

    def random_color(self):
        return(random.randrange(0, 7) * 32)

    async def main(self):
        for dotstring in self.keeb.led_i2c:
            for dot in range(len(dotstring)):
                dotstring[dot] = (self.random_color(), self.random_color(), self.random_color())
                await tasko.sleep(1/self.keeb.led_refresh)
