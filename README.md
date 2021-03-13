# RedPycoKeeb
## What is this?
I'm getting fed up with the options for keyboards and there isn't anything that I want 100%, everything is a compromise between form factor, customizability and availability.
So I'm making my own keyboard.

## Whats with the name?
I was originally going to do with a raspberry pico but we'll see if it comes out on top.
I'm not great with names and my other projects show but meh, maybe I'll give it a better name later.

## Design choices
I don't want to limit end users on customizing their boards or choosing what they want, so I'll be maximumizing that as much as possible while also giving the option for changing things like the size and layout in forks or derivatives.
I don't want the host device to make choices for the user so limiting things behind having a certain OS is not ok, eg, software that runs on the host device.

## Goals
- USB C input
    - This is just a requirement at this point
- Layout
    - Full size layout with 4 extra switches above the numpad to set for macros
    - Indicator lights need to be above the numbpad
    - Two LEDs per switch, I want extra light
- Switches
    - Hot swap switches
        - Khali hotswaps allow for MX style switches to swap in and out
            - Has a number of switch variants that will fit
- Firmware/Software
    - Firmware only, no host device software at all.
    - Firmware updates should be really simple, no custom software, just drag and drop in DFU or similar
    - CapsLock indicator is in key and matches RGB light of switch
    - All on keyboard with function key similar to ducky keyboards
    - Brightness toggle
    - Macro support
    - NKRO
        - I don't want artifacts or ghosting at all

## Software for designing/building the board
KiCAD, you're going to need KiCAD.
I'm also learning KiCAD so please if you see something I've done that could be done a better way, please file at least an issue or go a head and fix it in a PR.
If it makes sense, I'll merge it in, no questions asked.

## Firmware
This is largely going to depend on what MCU I choose and right now all I know is that the pico or an STMF4 might be the best options.
