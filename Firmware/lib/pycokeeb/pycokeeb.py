import time
import board
import tasko
from digitalio import DigitalInOut, Direction, Pull
from pycokeeb.keymap import KeyMap
from pycokeeb.leds import LEDs

class PycoKeeb(KeyMap):
    def __init__(self):
        self.USB_mA_total = 500 # replace this with the actual USB budget defined when plugged in
        self.debounce_time = 0.0000001 # Let the IO expander think about it!
        self.key_refresh = 1000
        self.led_refresh = 2
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
        self.leds = LEDs(self)
        self.main()

    def poll_keys(self):
        pressed_keys = []
        keys = []
        release_keys = []
        for key_res in self.check_keys():
            if key_res==None:
                continue
            if isinstance(key_res,self.type_array):
                (key_type,keycode) = key_res
                if key_type==KeyTypes.FUNC:
                    pass # Call for magic keys
            else:
                keycode = key_res
            keys.append(keycode)
            if key_res not in self.last_loopstep_keys:
                pressed_keys.append(keycode)
                self.update_hid(keycode)
        for item in self.last_loopstep_keys:
            if item not in keys:
                release_keys.append(item)
        self.last_loopstep_keys = keys
        if len(pressed_keys)>0:
            print("Pressed: ", pressed_keys)
            # self.update_hid(pressed_keys)
        if len(release_keys)>0:
            print("Released: ", release_keys)
            self.update_hid(release_keys,True)

    async def co_check_keys(self):
        print('keys')
        self.poll_keys()
        await tasko.sleep(1/self.key_refresh)

    async def co_led_management(self):
        print('leds')
        await self.leds.main()
        # await tasko.sleep(1/self.led_refresh)

    def main(self):
        # self.led_i2c[0].fill((255,0,0))
        # self.led_i2c[0].show()
        # self.led_i2c[1].fill((255,0,0))
        # self.led_i2c[1].show()

        self.last_loopstep_keys = []

        tasko.schedule(hz=self.key_refresh, coroutine_function=self.co_check_keys)
        tasko.schedule(hz=self.led_refresh, coroutine_function=self.co_led_management)
        tasko.run()

