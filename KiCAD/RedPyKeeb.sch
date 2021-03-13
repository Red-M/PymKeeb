EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
S 9150 750  500  300 
U 604A5E2C
F0 "key_matrix" 39
F1 "key_matrix.sch" 39
$EndSheet
Text Notes 1950 1050 2    59   ~ 0
Use I2C for interboard comms.\nSDA0 on GPIO0\nSCL0 on GPIO1
Text Notes 2350 800  0    59   ~ 0
TODO: Power bus needs to be sorted, see Unified-Daughterboard?\n
Text Notes 10650 1350 2    59   ~ 0
KEY_* originates from this sheet
Text GLabel 1200 2050 0    39   BiDi ~ 0
I2C_SDA0
Text GLabel 1200 2150 0    39   BiDi ~ 0
I2C_SCL0
NoConn ~ 1800 4150
NoConn ~ 1900 4150
NoConn ~ 2000 4150
Text GLabel 2600 2150 2    39   BiDi ~ 0
MAIN_VBUS
NoConn ~ 1200 2250
NoConn ~ 2600 2350
NoConn ~ 2600 2450
NoConn ~ 2600 2550
NoConn ~ 2600 2650
NoConn ~ 2600 2750
NoConn ~ 2600 2850
NoConn ~ 2600 2950
Text GLabel 2600 3050 2    39   BiDi ~ 0
PICO_RUN
NoConn ~ 2600 3150
NoConn ~ 2600 3250
NoConn ~ 2600 3350
NoConn ~ 2600 3450
NoConn ~ 2600 3550
NoConn ~ 2600 3650
NoConn ~ 2600 3750
NoConn ~ 2600 3850
NoConn ~ 2600 3950
NoConn ~ 1200 3950
NoConn ~ 1200 3850
NoConn ~ 1200 3750
NoConn ~ 1200 3650
NoConn ~ 1200 3550
NoConn ~ 1200 3450
NoConn ~ 1200 3350
NoConn ~ 1200 3250
NoConn ~ 1200 3150
NoConn ~ 1200 3050
NoConn ~ 1200 2750
NoConn ~ 2600 2050
Text GLabel 4900 2850 2    39   BiDi ~ 0
KEY_ROW5
Text GLabel 4900 2750 2    39   BiDi ~ 0
KEY_ROW4
Text GLabel 4900 2650 2    39   BiDi ~ 0
KEY_ROW3
Text GLabel 4900 2550 2    39   BiDi ~ 0
KEY_ROW2
Text GLabel 4900 2450 2    39   BiDi ~ 0
KEY_ROW1
Text GLabel 4900 2350 2    39   BiDi ~ 0
KEY_ROW0
Text GLabel 7150 3450 2    39   BiDi ~ 0
KEY_COL9
Text GLabel 7150 3350 2    39   BiDi ~ 0
KEY_COL8
Text GLabel 7150 3250 2    39   BiDi ~ 0
KEY_COL7
Text GLabel 4900 3850 2    39   BiDi ~ 0
KEY_COL6
Text GLabel 4900 3750 2    39   BiDi ~ 0
KEY_COL5
Text GLabel 4900 3650 2    39   BiDi ~ 0
KEY_COL4
Text GLabel 4900 3550 2    39   BiDi ~ 0
KEY_COL3
Text GLabel 4900 3450 2    39   BiDi ~ 0
KEY_COL2
Text GLabel 4900 3350 2    39   BiDi ~ 0
KEY_COL1
Text GLabel 4900 3250 2    39   BiDi ~ 0
KEY_COL0
Text GLabel 4900 2950 2    39   BiDi ~ 0
KEY_ROW6
Text GLabel 7150 3650 2    39   BiDi ~ 0
KEY_COL11
Text GLabel 7150 3550 2    39   BiDi ~ 0
KEY_COL10
Text GLabel 7150 3850 2    39   BiDi ~ 0
KEY_COL13
Text GLabel 7150 3750 2    39   BiDi ~ 0
KEY_COL12
Text GLabel 3500 2350 0    39   BiDi ~ 0
I2C_SDA0
Text GLabel 3500 2450 0    39   BiDi ~ 0
I2C_SCL0
Text GLabel 7150 2550 2    39   BiDi ~ 0
KEY_COL16
Text GLabel 7150 2450 2    39   BiDi ~ 0
KEY_COL15
Text GLabel 7150 2750 2    39   BiDi ~ 0
KEY_COL18
Text GLabel 7150 2650 2    39   BiDi ~ 0
KEY_COL17
Text GLabel 7150 2850 2    39   BiDi ~ 0
KEY_COL19
Text GLabel 7150 2350 2    39   BiDi ~ 0
KEY_COL14
Text GLabel 3750 1800 0    39   BiDi ~ 0
MAIN_VBUS
$Comp
L power:GNDPWR #PWR0102
U 1 1 633C353A
P 4200 4250
F 0 "#PWR0102" H 4200 4050 50  0001 C CNN
F 1 "GNDPWR" V 4205 4142 50  0000 R CNN
F 2 "" H 4200 4200 50  0001 C CNN
F 3 "" H 4200 4200 50  0001 C CNN
	1    4200 4250
	0    -1   -1   0   
$EndComp
$Comp
L Interface_Expansion:MCP23017_SO U2
U 1 1 633D7503
P 6450 3150
F 0 "U2" H 6450 4431 50  0000 C CNN
F 1 "MCP23017_SO" H 6450 4340 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 6650 2150 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 6650 2050 50  0001 L CNN
	1    6450 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0103
U 1 1 633D9D02
P 6450 4250
F 0 "#PWR0103" H 6450 4050 50  0001 C CNN
F 1 "GNDPWR" V 6455 4142 50  0000 R CNN
F 2 "" H 6450 4200 50  0001 C CNN
F 3 "" H 6450 4200 50  0001 C CNN
	1    6450 4250
	0    -1   -1   0   
$EndComp
Text GLabel 5750 2350 0    39   BiDi ~ 0
I2C_SDA0
Text GLabel 5750 2450 0    39   BiDi ~ 0
I2C_SCL0
$Comp
L Interface_Expansion:MCP23017_SO U3
U 1 1 6340BF08
P 8800 3150
F 0 "U3" H 8800 4431 50  0000 C CNN
F 1 "MCP23017_SO" H 8800 4340 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 9000 2150 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 9000 2050 50  0001 L CNN
	1    8800 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0105
U 1 1 6340BF0E
P 8800 4250
F 0 "#PWR0105" H 8800 4050 50  0001 C CNN
F 1 "GNDPWR" V 8805 4142 50  0000 R CNN
F 2 "" H 8800 4200 50  0001 C CNN
F 3 "" H 8800 4200 50  0001 C CNN
	1    8800 4250
	0    -1   -1   0   
$EndComp
Text Notes 9100 1850 2    39   ~ 0
LED IO controller
$Sheet
S 8300 750  500  300 
U 63412601
F0 "LED_strings" 39
F1 "led_strings.sch" 39
$EndSheet
Text GLabel 9500 2950 2    39   BiDi ~ 0
LED_SCL_ROW6
Text GLabel 9500 2850 2    39   BiDi ~ 0
LED_SCL_ROW5
Text GLabel 9500 2750 2    39   BiDi ~ 0
LED_SCL_ROW4
Text GLabel 9500 2650 2    39   BiDi ~ 0
LED_SCL_ROW3
Text GLabel 9500 2550 2    39   BiDi ~ 0
LED_SCL_ROW2
Text GLabel 9500 2450 2    39   BiDi ~ 0
LED_SCL_ROW1
Text GLabel 9500 2350 2    39   BiDi ~ 0
LED_SCL_ROW0
Text GLabel 9500 3850 2    39   BiDi ~ 0
LED_SDA_ROW6
Text GLabel 9500 3750 2    39   BiDi ~ 0
LED_SDA_ROW5
Text GLabel 9500 3650 2    39   BiDi ~ 0
LED_SDA_ROW4
Text GLabel 9500 3550 2    39   BiDi ~ 0
LED_SDA_ROW3
Text GLabel 9500 3450 2    39   BiDi ~ 0
LED_SDA_ROW2
Text GLabel 9500 3350 2    39   BiDi ~ 0
LED_SDA_ROW1
Text GLabel 9500 3250 2    39   BiDi ~ 0
LED_SDA_ROW0
$Comp
L Connector_Generic:Conn_01x04 J0
U 1 1 64341469
P 5000 1450
F 0 "J0" H 4918 1025 50  0000 C CNN
F 1 "Conn_01x04" H 4918 1116 50  0000 C CNN
F 2 "Connector_JST:JST_EH_S4B-EH_1x04_P2.50mm_Horizontal" H 5000 1450 50  0001 C CNN
F 3 "~" H 5000 1450 50  0001 C CNN
	1    5000 1450
	-1   0    0    1   
$EndComp
$Comp
L power:GNDPWR #PWR0101
U 1 1 6434583E
P 5200 1250
F 0 "#PWR0101" H 5200 1050 50  0001 C CNN
F 1 "GNDPWR" V 5205 1142 50  0000 R CNN
F 2 "" H 5200 1200 50  0001 C CNN
F 3 "" H 5200 1200 50  0001 C CNN
	1    5200 1250
	0    -1   -1   0   
$EndComp
Text GLabel 5200 1550 2    39   BiDi ~ 0
MAIN_VBUS
Text GLabel 5200 1350 2    39   BiDi ~ 0
USB_DN
Text GLabel 5200 1450 2    39   BiDi ~ 0
USB_DP
NoConn ~ 8100 3050
NoConn ~ 8100 2950
NoConn ~ 9500 3950
NoConn ~ 9500 3050
NoConn ~ 4900 3950
NoConn ~ 7150 3950
NoConn ~ 7150 3050
NoConn ~ 7150 2950
Text GLabel 3500 2950 0    39   BiDi ~ 0
IO_INT0
Text GLabel 3500 3050 0    39   BiDi ~ 0
IO_INT1
Text GLabel 5750 2950 0    39   BiDi ~ 0
IO_INT2
Text GLabel 5750 3050 0    39   BiDi ~ 0
IO_INT3
Text GLabel 1200 2550 0    39   BiDi ~ 0
IO_INT0
Text GLabel 1200 2650 0    39   BiDi ~ 0
IO_INT1
Text GLabel 1200 2850 0    39   BiDi ~ 0
IO_INT2
Text GLabel 1200 2950 0    39   BiDi ~ 0
IO_INT3
$Comp
L Interface_Expansion:MCP23017_SO U1
U 1 1 633C5696
P 4200 3150
F 0 "U1" H 4200 4431 50  0000 C CNN
F 1 "MCP23017_SO" H 4200 4340 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 4400 2150 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 4400 2050 50  0001 L CNN
	1    4200 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0104
U 1 1 64901E61
P 3500 3950
F 0 "#PWR0104" H 3500 3750 50  0001 C CNN
F 1 "GNDPWR" V 3504 3841 50  0000 R CNN
F 2 "" H 3500 3900 50  0001 C CNN
F 3 "" H 3500 3900 50  0001 C CNN
	1    3500 3950
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0106
U 1 1 64903402
P 3500 3850
F 0 "#PWR0106" H 3500 3650 50  0001 C CNN
F 1 "GNDPWR" V 3504 3741 50  0000 R CNN
F 2 "" H 3500 3800 50  0001 C CNN
F 3 "" H 3500 3800 50  0001 C CNN
	1    3500 3850
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0107
U 1 1 649035CF
P 3500 3750
F 0 "#PWR0107" H 3500 3550 50  0001 C CNN
F 1 "GNDPWR" V 3504 3641 50  0000 R CNN
F 2 "" H 3500 3700 50  0001 C CNN
F 3 "" H 3500 3700 50  0001 C CNN
	1    3500 3750
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0108
U 1 1 649043C1
P 5750 3850
F 0 "#PWR0108" H 5750 3650 50  0001 C CNN
F 1 "GNDPWR" V 5754 3741 50  0000 R CNN
F 2 "" H 5750 3800 50  0001 C CNN
F 3 "" H 5750 3800 50  0001 C CNN
	1    5750 3850
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0109
U 1 1 64904490
P 5750 3750
F 0 "#PWR0109" H 5750 3550 50  0001 C CNN
F 1 "GNDPWR" V 5754 3641 50  0000 R CNN
F 2 "" H 5750 3700 50  0001 C CNN
F 3 "" H 5750 3700 50  0001 C CNN
	1    5750 3750
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0110
U 1 1 64904A18
P 8100 3750
F 0 "#PWR0110" H 8100 3550 50  0001 C CNN
F 1 "GNDPWR" V 8104 3641 50  0000 R CNN
F 2 "" H 8100 3700 50  0001 C CNN
F 3 "" H 8100 3700 50  0001 C CNN
	1    8100 3750
	0    1    1    0   
$EndComp
Text GLabel 8100 2350 0    39   BiDi ~ 0
I2C_SDA0
Text GLabel 8100 2450 0    39   BiDi ~ 0
I2C_SCL0
NoConn ~ 1200 2350
NoConn ~ 1200 2450
Text GLabel 8100 3250 0    39   BiDi ~ 0
MAIN_VBUS
Text GLabel 5750 3250 0    39   BiDi ~ 0
MAIN_VBUS
Text GLabel 3500 3250 0    39   BiDi ~ 0
MAIN_VBUS
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 6490C06D
P 6050 1450
F 0 "J1" H 5968 1025 50  0000 C CNN
F 1 "Conn_01x04" H 5968 1116 50  0000 C CNN
F 2 "Connector_JST:JST_EH_S4B-EH_1x04_P2.50mm_Horizontal" H 6050 1450 50  0001 C CNN
F 3 "~" H 6050 1450 50  0001 C CNN
	1    6050 1450
	-1   0    0    1   
$EndComp
Text GLabel 6250 1550 2    39   BiDi ~ 0
I2C_SDA0
Text GLabel 6250 1450 2    39   BiDi ~ 0
I2C_SCL0
Text GLabel 2100 1850 1    39   BiDi ~ 0
USB_DN
Text GLabel 2200 1850 1    39   BiDi ~ 0
USB_DP
$Comp
L power:GNDPWR #PWR0111
U 1 1 64912107
P 1600 1850
F 0 "#PWR0111" H 1600 1650 50  0001 C CNN
F 1 "GNDPWR" V 1605 1742 50  0000 R CNN
F 2 "" H 1600 1800 50  0001 C CNN
F 3 "" H 1600 1800 50  0001 C CNN
	1    1600 1850
	-1   0    0    1   
$EndComp
$Comp
L RPI_Pico:Pico U0
U 1 1 62848745
P 1900 3000
F 0 "U0" H 1900 4215 50  0000 C CNN
F 1 "USB_Pico" H 1900 4124 50  0000 C CNN
F 2 "Custom_pico:RPi_Pico_SMD_TH" V 1900 3000 50  0001 C CNN
F 3 "" H 1900 3000 50  0001 C CNN
	1    1900 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 64942561
P 4350 1950
F 0 "C1" V 4605 1950 50  0000 C CNN
F 1 "0805B104K100CT" V 4514 1950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4388 1800 50  0001 C CNN
F 3 "~" H 4350 1950 50  0001 C CNN
	1    4350 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C2
U 1 1 6494E898
P 6600 2000
F 0 "C2" V 6855 2000 50  0000 C CNN
F 1 "0805B104K100CT" V 6764 2000 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6638 1850 50  0001 C CNN
F 3 "~" H 6600 2000 50  0001 C CNN
	1    6600 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C3
U 1 1 6494F130
P 8950 2000
F 0 "C3" V 9205 2000 50  0000 C CNN
F 1 "0805B104K100CT" V 9114 2000 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8988 1850 50  0001 C CNN
F 3 "~" H 8950 2000 50  0001 C CNN
	1    8950 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDPWR #PWR0112
U 1 1 64950902
P 4500 1950
F 0 "#PWR0112" H 4500 1750 50  0001 C CNN
F 1 "GNDPWR" V 4505 1842 50  0000 R CNN
F 2 "" H 4500 1900 50  0001 C CNN
F 3 "" H 4500 1900 50  0001 C CNN
	1    4500 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDPWR #PWR0113
U 1 1 64952DDE
P 6750 2000
F 0 "#PWR0113" H 6750 1800 50  0001 C CNN
F 1 "GNDPWR" H 6754 1846 50  0000 C CNN
F 2 "" H 6750 1950 50  0001 C CNN
F 3 "" H 6750 1950 50  0001 C CNN
	1    6750 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDPWR #PWR0114
U 1 1 64954015
P 9100 2000
F 0 "#PWR0114" H 9100 1800 50  0001 C CNN
F 1 "GNDPWR" H 9104 1846 50  0000 C CNN
F 2 "" H 9100 1950 50  0001 C CNN
F 3 "" H 9100 1950 50  0001 C CNN
	1    9100 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 1800 4200 1800
Wire Wire Line
	4200 1800 4200 1950
Connection ~ 4200 1800
Wire Wire Line
	6450 2050 6450 2000
Connection ~ 6450 1800
Wire Wire Line
	8800 2050 8800 2000
Connection ~ 8800 2000
Wire Wire Line
	8800 2000 8800 1800
Connection ~ 6450 2000
Wire Wire Line
	6450 2000 6450 1800
Wire Wire Line
	6450 1800 8800 1800
Connection ~ 4200 1950
Wire Wire Line
	4200 1950 4200 2050
Wire Wire Line
	4200 1800 6450 1800
NoConn ~ 2600 2250
Text Notes 2650 1200 0    39   ~ 0
0805B104K100CT for capacitors\n100nF
$EndSCHEMATC
