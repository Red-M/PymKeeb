import time
import board
from digitalio import DigitalInOut, Direction, Pull

class PycoKeeb(KeyMap):
    def __init__(self):
        self.USB_mA_total = 500 # replace this with the actual USB budget defined when plugged in
        self.debounce_time = 0.01
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
        self.config()
        self.main()

    def main(self):
        self.led_i2c[0].fill((255,0,0))
        self.led_i2c[0].show()
        self.led_i2c[1].fill((255,0,0))
        self.led_i2c[1].show()

        last_step_keys = []
        while True:
            keys = self.check_keys()
            pressed_keys = [item for item in keys if item not in last_step_keys]
            release_keys = [item for item in last_step_keys if item not in keys]
            if len(pressed_keys)>0:
                print("Pressed: ", keys)
                self.update_hid(pressed_keys)
            if len(release_keys)>0:
                print("Released: ", release_keys)
                self.update_hid(release_keys,True)
            last_step_keys = keys

