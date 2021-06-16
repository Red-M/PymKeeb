import random
import tasko
import terminalio
import displayio
from adafruit_display_text import label
from adafruit_st7789 import ST7789

class Screen():
    def __init__(self,keeb):
        self.keeb = keeb
        self.screen = self.keeb.screen_spi
        self.reset_screen()

    def reset_screen(self):
        splash = displayio.Group(max_size=10)
        self.screen.show(splash)
        color_bitmap = displayio.Bitmap(self.screen.width, self.screen.height, 1)
        color_palette = displayio.Palette(1)
        color_palette[0] = 0x000000
        bg_sprite = displayio.TileGrid(color_bitmap, pixel_shader=color_palette, x=0, y=0)
        splash.append(bg_sprite)

    def random_color(self):
        return(random.randrange(0, 7) * 32)

    async def main(self):
        self.reset_screen()
        await tasko.sleep(1/self.keeb.screen_refresh)
