EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 9650 750  500  300 
U 604A5E2C
F0 "key_matrix" 59
F1 "key_matrix.sch" 59
$EndSheet
$Comp
L MCU_RaspberryPi_and_Boards:Pico U1,0
U 1 1 613B279D
P 2450 6250
F 0 "U1,0" H 2450 7465 50  0000 C CNN
F 1 "Board_main_Pico" H 2450 7374 50  0000 C CNN
F 2 "MCU_RaspberryPi_and_Boards:RPi_Pico_SMD_TH" V 2450 6250 50  0001 C CNN
F 3 "" H 2450 6250 50  0001 C CNN
	1    2450 6250
	1    0    0    -1  
$EndComp
Text GLabel 3150 6900 2    20   BiDi ~ 0
KEY_ROW0
Text GLabel 3150 6800 2    20   BiDi ~ 0
KEY_ROW1
Text GLabel 3150 6700 2    20   BiDi ~ 0
KEY_ROW2
Text GLabel 3150 6600 2    20   BiDi ~ 0
KEY_ROW3
Text GLabel 3150 6400 2    20   BiDi ~ 0
KEY_ROW4
Text GLabel 3150 6200 2    20   BiDi ~ 0
KEY_ROW5
NoConn ~ 3150 5800
NoConn ~ 3150 5700
NoConn ~ 3150 5600
NoConn ~ 3150 6000
NoConn ~ 3150 6500
NoConn ~ 1750 6000
NoConn ~ 1750 5500
NoConn ~ 1750 7000
NoConn ~ 1750 6500
Wire Wire Line
	1750 5300 1700 5300
Wire Wire Line
	1750 5400 1700 5400
NoConn ~ 3150 7000
NoConn ~ 2550 7400
NoConn ~ 2450 7400
NoConn ~ 2350 7400
Text Notes 1950 1050 2    59   ~ 0
Use I2C for interboard comms.\nSDA0 on GPIO0\nSCL0 on GPIO1\nSDA1 on GPIO4\nSCL1 on GPIO5
Text GLabel 1700 5300 0    59   BiDi ~ 0
I2C_SDA0
Text GLabel 1700 5400 0    59   BiDi ~ 0
I2C_SCL0
$Comp
L MCU_RaspberryPi_and_Boards:Pico U1,1
U 1 1 626400D5
P 5250 6250
F 0 "U1,1" H 5250 7465 50  0000 C CNN
F 1 "Board_side_Pico" H 5250 7374 50  0000 C CNN
F 2 "MCU_RaspberryPi_and_Boards:RPi_Pico_SMD_TH" V 5250 6250 50  0001 C CNN
F 3 "" H 5250 6250 50  0001 C CNN
	1    5250 6250
	1    0    0    -1  
$EndComp
Text GLabel 4550 5600 0    20   BiDi ~ 0
KEY_COL14
Text GLabel 4550 5700 0    20   BiDi ~ 0
KEY_COL15
Text GLabel 4550 5800 0    20   BiDi ~ 0
KEY_COL16
Text GLabel 4550 5900 0    20   BiDi ~ 0
KEY_COL17
Text GLabel 4550 6100 0    20   BiDi ~ 0
KEY_COL18
Text GLabel 4550 6200 0    20   BiDi ~ 0
KEY_COL19
Text GLabel 5950 7200 2    20   BiDi ~ 0
KEY_ROW0,1
Text GLabel 5950 7100 2    20   BiDi ~ 0
KEY_ROW1,1
Text GLabel 5950 6900 2    20   BiDi ~ 0
KEY_ROW2,1
Text GLabel 5950 6800 2    20   BiDi ~ 0
KEY_ROW3,1
Text GLabel 5950 6700 2    20   BiDi ~ 0
KEY_ROW4,1
Text GLabel 5950 6600 2    20   BiDi ~ 0
KEY_ROW5,1
Text GLabel 5950 6400 2    20   BiDi ~ 0
KEY_ROW6
NoConn ~ 5950 5800
NoConn ~ 5950 5700
NoConn ~ 5950 5600
NoConn ~ 5950 6000
NoConn ~ 5950 6500
NoConn ~ 4550 6000
NoConn ~ 4550 5500
NoConn ~ 4550 7000
NoConn ~ 4550 6500
Wire Wire Line
	4550 5300 4500 5300
Wire Wire Line
	4550 5400 4500 5400
NoConn ~ 5950 7000
NoConn ~ 5350 7400
NoConn ~ 5250 7400
NoConn ~ 5150 7400
Text GLabel 4500 5300 0    59   BiDi ~ 0
I2C_SDA0
Text GLabel 4500 5400 0    59   BiDi ~ 0
I2C_SCL0
Text Notes 2350 800  0    59   ~ 0
TODO: Power bus needs to be sorted, see Unified-Daughterboard?\n
Text GLabel 1800 2900 0    59   BiDi ~ 0
I2C_SDA1
Text GLabel 1800 3000 0    59   BiDi ~ 0
I2C_SCL1
Text GLabel 3150 7200 2    20   BiDi ~ 0
KEY_COL13
Text GLabel 3150 7100 2    20   BiDi ~ 0
KEY_COL12
Text GLabel 1750 6900 0    20   BiDi ~ 0
KEY_COL11
Text GLabel 1750 6800 0    20   BiDi ~ 0
KEY_COL10
Text GLabel 1750 6700 0    20   BiDi ~ 0
KEY_COL9
Text GLabel 1750 6600 0    20   BiDi ~ 0
KEY_COL8
Text GLabel 1750 6400 0    20   BiDi ~ 0
KEY_COL7
Text GLabel 1750 6300 0    20   BiDi ~ 0
KEY_COL6
Text GLabel 1750 6200 0    20   BiDi ~ 0
KEY_COL5
Text GLabel 1750 6100 0    20   BiDi ~ 0
KEY_COL4
Text GLabel 1750 5900 0    20   BiDi ~ 0
KEY_COL3
Text GLabel 1750 5800 0    20   BiDi ~ 0
KEY_COL2
Text GLabel 1750 5700 0    20   BiDi ~ 0
KEY_COL1
Text GLabel 1750 5600 0    20   BiDi ~ 0
KEY_COL0
NoConn ~ 4550 7200
NoConn ~ 4550 7100
NoConn ~ 4550 6900
NoConn ~ 4550 6800
NoConn ~ 4550 6700
NoConn ~ 4550 6600
NoConn ~ 4550 6400
NoConn ~ 4550 6300
Text GLabel 3150 6300 2    20   BiDi ~ 0
PICO_RUN
Text GLabel 5950 6300 2    20   BiDi ~ 0
PICO_RUN
Text Notes 11100 1250 2    59   ~ 0
KEY_* originates from this sheet
$Comp
L MCU_RaspberryPi_and_Boards:Pico U0
U 1 1 62848745
P 2500 3550
F 0 "U0" H 2500 4765 50  0000 C CNN
F 1 "USB_Pico" H 2500 4674 50  0000 C CNN
F 2 "RPi_Pico:RPi_Pico_SMD_TH" V 2500 3550 50  0001 C CNN
F 3 "" H 2500 3550 50  0001 C CNN
	1    2500 3550
	1    0    0    -1  
$EndComp
Text GLabel 1800 2600 0    59   BiDi ~ 0
I2C_SDA0
Text GLabel 1800 2700 0    59   BiDi ~ 0
I2C_SCL0
NoConn ~ 1750 7100
NoConn ~ 1750 7200
NoConn ~ 3150 6100
NoConn ~ 3150 5900
NoConn ~ 5950 6200
NoConn ~ 5950 6100
NoConn ~ 5950 5900
NoConn ~ 2400 4700
NoConn ~ 2500 4700
NoConn ~ 2600 4700
Text GLabel 5950 5400 2    20   BiDi ~ 0
PICO_PWR
NoConn ~ 5950 5300
Text GLabel 3150 5400 2    20   BiDi ~ 0
PICO_PWR
NoConn ~ 3150 5300
Text GLabel 3200 2700 2    20   BiDi ~ 0
PICO_PWR
NoConn ~ 1800 2800
NoConn ~ 3200 2900
NoConn ~ 3200 3000
NoConn ~ 3200 3100
NoConn ~ 3200 3200
NoConn ~ 3200 3300
NoConn ~ 3200 3400
NoConn ~ 3200 3500
Text GLabel 3200 3600 2    20   BiDi ~ 0
PICO_RUN
NoConn ~ 3200 3700
NoConn ~ 3200 3800
NoConn ~ 3200 3900
NoConn ~ 3200 4000
NoConn ~ 3200 4100
NoConn ~ 3200 4200
NoConn ~ 3200 4300
NoConn ~ 3200 4400
NoConn ~ 3200 4500
NoConn ~ 1800 4500
NoConn ~ 1800 4400
NoConn ~ 1800 4300
NoConn ~ 1800 4200
NoConn ~ 1800 4100
NoConn ~ 1800 4000
NoConn ~ 1800 3900
NoConn ~ 1800 3800
NoConn ~ 1800 3700
NoConn ~ 1800 3600
NoConn ~ 1800 3500
NoConn ~ 1800 3400
NoConn ~ 1800 3300
NoConn ~ 1800 3200
NoConn ~ 1800 3100
NoConn ~ 3200 2600
NoConn ~ 3200 2800
NoConn ~ 3150 5500
NoConn ~ 5950 5500
$Comp
L Connector_Generic_MountingPin:Conn_01x04_MountingPin J0
U 1 1 628710E8
P 2500 1850
F 0 "J0" V 2725 1718 50  0000 C CNN
F 1 "Conn_01x04_MountingPin_PicoUSB" V 2634 1718 50  0000 C CNN
F 2 "" H 2500 1850 50  0001 C CNN
F 3 "~" H 2500 1850 50  0001 C CNN
	1    2500 1850
	0    -1   -1   0   
$EndComp
Text Notes 3850 1550 2    20   ~ 0
This needs a footprint that will allow me to solder a small 4 pin connector to connect to the C3 daughterboard that will screw into the case.
$EndSCHEMATC
