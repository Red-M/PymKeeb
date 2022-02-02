import board
import storage
import usb_cdc
import usb_hid
import usb_midi
from digitalio import DigitalInOut, Direction, Pull

import main_controller

main_c = main_controller.main

if main_c==True:
    HYBRID_KEYBOARD_DESCRIPTOR_REPORT_ID=7
    HYBRID_REPORT_BYTES=24
    hybrid_keyboard_descriptor=bytes((
        0x05, 0x01,                         # Usage Page (Generic Desktop),
        0x09, 0x06,                         # Usage (Keyboard),
        0xA1, 0x01,                         # Collection (Application),
        0x85, 0x07,                         #   6,7 Report ID  [SET AT RUNTIME]
        # hybrid of modifiers
        0x75, 0x01,                         #   Report Size (1),
        0x95, 0x08,                         #   Report Count (8),
        0x05, 0x07,                         #   Usage Page (Key Codes),
        0x19, 0xE0,                         #   Usage Minimum (224),
        0x29, 0xE7,                         #   Usage Maximum (231),
        0x15, 0x00,                         #   Logical Minimum (0),
        0x25, 0x01,                         #   Logical Maximum (1),
        0x81, 0x02,                         #   Input (Data, Variable, Absolute), ;Modifier byte
        # LED output report
        0x95, 0x05,                         #   Report Count (5),
        0x75, 0x01,                         #   Report Size (1),
        0x05, 0x08,                         #   Usage Page (LEDs),
        0x19, 0x01,                         #   Usage Minimum (1),
        0x29, 0x05,                         #   Usage Maximum (5),
        0x91, 0x02,                         #   Output (Data, Variable, Absolute),
        0x95, 0x01,                         #   Report Count (1),
        0x75, 0x03,                         #   Report Size (3),
        0x91, 0x03,                         #   Output (Constant),
        # Padding / fake boot keyboard
        0x95, 0x38,                         #   Report Count (56),
        0x75, 0x01,                         #   Report Size (1),
        0x81, 0x01,                         #   Input (Const,Array,Abs,No Wrap,Linear,Preferred State,No Null Position)

        # hybrid of keys
        0x95, (HYBRID_REPORT_BYTES-8)*8,    #   Report Count (),
        0x75, 0x01,                         #   Report Size (1),
        0x15, 0x00,                         #   Logical Minimum (0),
        0x25, 0x01,                         #   Logical Maximum(1),
        0x05, 0x07,                         #   Usage Page (Key Codes),
        0x19, 0x00,                         #   Usage Minimum (0),
        0x29, (HYBRID_REPORT_BYTES-8)*8-1,  #   Usage Maximum (),
        0x81, 0x02,                         #   Input (Data, Variable, Absolute),
        0xc0                                # End Collection
    ))

    hybrid_keyboard = usb_hid.Device(
        report_descriptor=hybrid_keyboard_descriptor,
        usage_page=0x1,
        usage=0x6,
        in_report_lengths=(HYBRID_REPORT_BYTES,),
        out_report_lengths=(1,),
        report_ids=(HYBRID_KEYBOARD_DESCRIPTOR_REPORT_ID,),
    )


    usb_devices = [
        hybrid_keyboard,
        usb_hid.Device.KEYBOARD,
        usb_hid.Device.CONSUMER_CONTROL,
        usb_hid.Device.MOUSE,
    ]
else:
    usb_devices = []

pin_on = True
pin_off = False
if main_c==True:
    dip_pins = [
        DigitalInOut(board.D38),
        DigitalInOut(board.D39),
        DigitalInOut(board.D40),
        DigitalInOut(board.D41)
    ]
    six_kro_select = dip_pins[0]
    usb3_power = dip_pins[1]
    dip_pin3 = dip_pins[2]
    debug_mode = dip_pins[3]

    six_kro_select.switch_to_input(Pull.DOWN)
    usb3_power.switch_to_input(Pull.DOWN)
    debug_mode.switch_to_input(Pull.DOWN)
    if main_c==True:
        if six_kro_select.value==pin_on:
            del usb_devices[0]
        elif six_kro_select.value==pin_off:
            del usb_devices[1]

    global USB_POWER_ALLOWANCE
    if usb3_power.value==pin_on:
        USB_POWER_ALLOWANCE = 900
    else:
        USB_POWER_ALLOWANCE = 500

    if debug_mode.value==pin_on: # flip for release boards
        storage.disable_usb_drive() # CIRCUITPY drive
        usb_cdc.disable() # REPL

    for pin in dip_pins:
        pin.deinit()
    del dip_pins

usb_midi.disable()
usb_hid.enable(usb_devices)
