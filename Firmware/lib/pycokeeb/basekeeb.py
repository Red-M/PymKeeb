import board
import busio
import adafruit_dotstar
from digitalio import DigitalInOut, Direction, Pull
from adafruit_bus_device.i2c_device import I2CDevice

class BaseKeeb():
    def power_budgets(self):
        main_board_allowance = 100 # This is the amount of power for everything minus the LEDs
        return({'main_board':main_board_allowance,'leds':self.USB_mA_total-main_board_allowance})

    def get_led_count(self):
        total = 0
        for i in range(0,len(self.led_i2c)):
            total+=len(self.led_i2c[i])
        return(total)

    def led_brightness(self):
        return(float(self.power_budgets()['leds']/self.led_count)/60)

    def mcp(self,device):
        return(self._mcp[device])

    def _mcp_pin(self,device,pin):
        return(self.mcp(device).get_pin(pin))

    def _led_i2c(self,device,cl,da,dots=1):
        return(adafruit_dotstar.DotStar(self._mcp_pin(device,cl), self._mcp_pin(device,da), dots, brightness=self.led_brightness()))

    def _enable_mcp_irq(self,device):
        self.mcp(device).interrupt_enable = 0xFFFF
        self.mcp(device).interrupt_configuration = 0x0000
        self.mcp(device).io_control = 0x40 # These need to be set to push-pull and not open drain on bit 2
        self.mcp(device).clear_ints()

    def _setup_key_mcp(self,device):
        self._enable_mcp_irq(device)
