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
TODO: Power bus needs to be sorted, see Unified-Daughterboard?\nLED row 7 is for status indicators
Text Notes 10650 1350 2    59   ~ 0
KEY_* originates from this sheet
NoConn ~ 3200 4350
NoConn ~ 3300 4350
NoConn ~ 3400 4350
Text GLabel 4000 2350 2    39   BiDi ~ 0
MAIN_VBUS
NoConn ~ 2600 2450
NoConn ~ 4000 2550
NoConn ~ 4000 2650
NoConn ~ 4000 2750
NoConn ~ 4000 2850
NoConn ~ 4000 2950
NoConn ~ 4000 3050
NoConn ~ 4000 3150
Text GLabel 4000 3250 2    39   BiDi ~ 0
PICO_RUN
NoConn ~ 4000 3350
NoConn ~ 4000 3450
NoConn ~ 4000 3550
NoConn ~ 4000 3650
NoConn ~ 4000 3750
NoConn ~ 4000 3850
NoConn ~ 4000 3950
NoConn ~ 4000 4050
NoConn ~ 4000 4150
NoConn ~ 2600 4150
NoConn ~ 2600 4050
NoConn ~ 2600 3950
NoConn ~ 2600 3850
NoConn ~ 2600 3750
NoConn ~ 2600 3650
NoConn ~ 2600 3550
NoConn ~ 2600 3450
NoConn ~ 2600 3350
NoConn ~ 2600 2950
NoConn ~ 4000 2250
Text GLabel 2350 5800 2    39   BiDi ~ 0
KEY_ROW5
Text GLabel 2350 5700 2    39   BiDi ~ 0
KEY_ROW4
Text GLabel 2350 5600 2    39   BiDi ~ 0
KEY_ROW3
Text GLabel 2350 5500 2    39   BiDi ~ 0
KEY_ROW2
Text GLabel 2350 5400 2    39   BiDi ~ 0
KEY_ROW1
Text GLabel 2350 5300 2    39   BiDi ~ 0
KEY_ROW0
Text GLabel 4600 6400 2    39   BiDi ~ 0
KEY_COL9
Text GLabel 4600 6300 2    39   BiDi ~ 0
KEY_COL8
Text GLabel 4600 6200 2    39   BiDi ~ 0
KEY_COL7
Text GLabel 2350 6800 2    39   BiDi ~ 0
KEY_COL6
Text GLabel 2350 6700 2    39   BiDi ~ 0
KEY_COL5
Text GLabel 2350 6600 2    39   BiDi ~ 0
KEY_COL4
Text GLabel 2350 6500 2    39   BiDi ~ 0
KEY_COL3
Text GLabel 2350 6400 2    39   BiDi ~ 0
KEY_COL2
Text GLabel 2350 6300 2    39   BiDi ~ 0
KEY_COL1
Text GLabel 2350 6200 2    39   BiDi ~ 0
KEY_COL0
Text GLabel 2350 5900 2    39   BiDi ~ 0
KEY_ROW6
Text GLabel 4600 6600 2    39   BiDi ~ 0
KEY_COL11
Text GLabel 4600 6500 2    39   BiDi ~ 0
KEY_COL10
Text GLabel 4600 6800 2    39   BiDi ~ 0
KEY_COL13
Text GLabel 4600 6700 2    39   BiDi ~ 0
KEY_COL12
Text GLabel 950  5300 0    39   BiDi ~ 0
I2C_SDA0
Text GLabel 950  5400 0    39   BiDi ~ 0
I2C_SCL0
Text GLabel 4600 5500 2    39   BiDi ~ 0
KEY_COL16
Text GLabel 4600 5400 2    39   BiDi ~ 0
KEY_COL15
Text GLabel 4600 5700 2    39   BiDi ~ 0
KEY_COL18
Text GLabel 4600 5600 2    39   BiDi ~ 0
KEY_COL17
Text GLabel 4600 5800 2    39   BiDi ~ 0
KEY_COL19
Text GLabel 4600 5300 2    39   BiDi ~ 0
KEY_COL14
Text GLabel 1200 4750 0    39   BiDi ~ 0
MAIN_VBUS
$Comp
L power:GNDPWR #PWR0102
U 1 1 633C353A
P 1650 7200
F 0 "#PWR0102" H 1650 7000 50  0001 C CNN
F 1 "GNDPWR" V 1655 7092 50  0000 R CNN
F 2 "" H 1650 7150 50  0001 C CNN
F 3 "" H 1650 7150 50  0001 C CNN
	1    1650 7200
	0    -1   -1   0   
$EndComp
$Comp
L Interface_Expansion:MCP23017_SO U2
U 1 1 633D7503
P 3900 6100
F 0 "U2" H 3900 7381 50  0000 C CNN
F 1 "MCP23017_SO" H 3900 7290 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 4100 5100 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 4100 5000 50  0001 L CNN
	1    3900 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0103
U 1 1 633D9D02
P 3900 7200
F 0 "#PWR0103" H 3900 7000 50  0001 C CNN
F 1 "GNDPWR" V 3905 7092 50  0000 R CNN
F 2 "" H 3900 7150 50  0001 C CNN
F 3 "" H 3900 7150 50  0001 C CNN
	1    3900 7200
	0    -1   -1   0   
$EndComp
Text GLabel 3200 5300 0    39   BiDi ~ 0
I2C_SDA0
Text GLabel 3200 5400 0    39   BiDi ~ 0
I2C_SCL0
$Comp
L Interface_Expansion:MCP23017_SO U3
U 1 1 6340BF08
P 6250 6100
F 0 "U3" H 6250 7381 50  0000 C CNN
F 1 "MCP23017_SO" H 6250 7290 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 6450 5100 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 6450 5000 50  0001 L CNN
	1    6250 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0105
U 1 1 6340BF0E
P 6250 7200
F 0 "#PWR0105" H 6250 7000 50  0001 C CNN
F 1 "GNDPWR" V 6255 7092 50  0000 R CNN
F 2 "" H 6250 7150 50  0001 C CNN
F 3 "" H 6250 7150 50  0001 C CNN
	1    6250 7200
	0    -1   -1   0   
$EndComp
Text Notes 6550 4800 2    39   ~ 0
LED IO controller
$Sheet
S 8300 750  500  300 
U 63412601
F0 "LED_strings" 39
F1 "led_strings.sch" 39
$EndSheet
Text GLabel 6950 5900 2    39   BiDi ~ 0
LED_SCL_ROW6
Text GLabel 6950 5800 2    39   BiDi ~ 0
LED_SCL_ROW5
Text GLabel 6950 5700 2    39   BiDi ~ 0
LED_SCL_ROW4
Text GLabel 6950 5600 2    39   BiDi ~ 0
LED_SCL_ROW3
Text GLabel 6950 5500 2    39   BiDi ~ 0
LED_SCL_ROW2
Text GLabel 6950 5400 2    39   BiDi ~ 0
LED_SCL_ROW1
Text GLabel 6950 5300 2    39   BiDi ~ 0
LED_SCL_ROW0
Text GLabel 6950 6800 2    39   BiDi ~ 0
LED_SDA_ROW6
Text GLabel 6950 6700 2    39   BiDi ~ 0
LED_SDA_ROW5
Text GLabel 6950 6600 2    39   BiDi ~ 0
LED_SDA_ROW4
Text GLabel 6950 6500 2    39   BiDi ~ 0
LED_SDA_ROW3
Text GLabel 6950 6400 2    39   BiDi ~ 0
LED_SDA_ROW2
Text GLabel 6950 6300 2    39   BiDi ~ 0
LED_SDA_ROW1
Text GLabel 6950 6200 2    39   BiDi ~ 0
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
NoConn ~ 5550 6000
NoConn ~ 5550 5900
NoConn ~ 2350 6900
NoConn ~ 4600 6900
NoConn ~ 4600 6000
NoConn ~ 4600 5900
Text GLabel 950  5900 0    39   BiDi ~ 0
IO_INT0
Text GLabel 950  6000 0    39   BiDi ~ 0
IO_INT1
Text GLabel 3200 5900 0    39   BiDi ~ 0
IO_INT2
Text GLabel 3200 6000 0    39   BiDi ~ 0
IO_INT3
Text GLabel 1300 3200 0    39   BiDi ~ 0
IO_INT0
Text GLabel 1300 3400 0    39   BiDi ~ 0
IO_INT1
Text GLabel 1300 3600 0    39   BiDi ~ 0
IO_INT2
Text GLabel 1300 3800 0    39   BiDi ~ 0
IO_INT3
$Comp
L Interface_Expansion:MCP23017_SO U1
U 1 1 633C5696
P 1650 6100
F 0 "U1" H 1650 7381 50  0000 C CNN
F 1 "MCP23017_SO" H 1650 7290 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 1850 5100 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 1850 5000 50  0001 L CNN
	1    1650 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0104
U 1 1 64901E61
P 950 6900
F 0 "#PWR0104" H 950 6700 50  0001 C CNN
F 1 "GNDPWR" V 954 6791 50  0000 R CNN
F 2 "" H 950 6850 50  0001 C CNN
F 3 "" H 950 6850 50  0001 C CNN
	1    950  6900
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0106
U 1 1 64903402
P 950 6800
F 0 "#PWR0106" H 950 6600 50  0001 C CNN
F 1 "GNDPWR" V 954 6691 50  0000 R CNN
F 2 "" H 950 6750 50  0001 C CNN
F 3 "" H 950 6750 50  0001 C CNN
	1    950  6800
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0107
U 1 1 649035CF
P 950 6700
F 0 "#PWR0107" H 950 6500 50  0001 C CNN
F 1 "GNDPWR" V 954 6591 50  0000 R CNN
F 2 "" H 950 6650 50  0001 C CNN
F 3 "" H 950 6650 50  0001 C CNN
	1    950  6700
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0108
U 1 1 649043C1
P 3200 6800
F 0 "#PWR0108" H 3200 6600 50  0001 C CNN
F 1 "GNDPWR" V 3204 6691 50  0000 R CNN
F 2 "" H 3200 6750 50  0001 C CNN
F 3 "" H 3200 6750 50  0001 C CNN
	1    3200 6800
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0109
U 1 1 64904490
P 3200 6700
F 0 "#PWR0109" H 3200 6500 50  0001 C CNN
F 1 "GNDPWR" V 3204 6591 50  0000 R CNN
F 2 "" H 3200 6650 50  0001 C CNN
F 3 "" H 3200 6650 50  0001 C CNN
	1    3200 6700
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0110
U 1 1 64904A18
P 5550 6700
F 0 "#PWR0110" H 5550 6500 50  0001 C CNN
F 1 "GNDPWR" V 5554 6591 50  0000 R CNN
F 2 "" H 5550 6650 50  0001 C CNN
F 3 "" H 5550 6650 50  0001 C CNN
	1    5550 6700
	0    1    1    0   
$EndComp
Text GLabel 5550 5300 0    39   BiDi ~ 0
I2C_SDA0
Text GLabel 5550 5400 0    39   BiDi ~ 0
I2C_SCL0
NoConn ~ 2600 2650
Text GLabel 5550 6200 0    39   BiDi ~ 0
MAIN_VBUS
Text GLabel 3200 6200 0    39   BiDi ~ 0
MAIN_VBUS
Text GLabel 950  6200 0    39   BiDi ~ 0
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
Text GLabel 3500 2050 1    39   BiDi ~ 0
USB_DN
Text GLabel 3600 2050 1    39   BiDi ~ 0
USB_DP
$Comp
L power:GNDPWR #PWR0111
U 1 1 64912107
P 3000 2050
F 0 "#PWR0111" H 3000 1850 50  0001 C CNN
F 1 "GNDPWR" V 3005 1942 50  0000 R CNN
F 2 "" H 3000 2000 50  0001 C CNN
F 3 "" H 3000 2000 50  0001 C CNN
	1    3000 2050
	-1   0    0    1   
$EndComp
$Comp
L RPI_Pico:Pico U0
U 1 1 62848745
P 3300 3200
F 0 "U0" H 3300 4415 50  0000 C CNN
F 1 "USB_Pico" H 3300 4324 50  0000 C CNN
F 2 "Custom_pico:RPi_Pico_SMD_TH" V 3300 3200 50  0001 C CNN
F 3 "" H 3300 3200 50  0001 C CNN
	1    3300 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 64942561
P 1800 4900
F 0 "C1" V 2055 4900 50  0000 C CNN
F 1 "0805B104K100CT" V 1964 4900 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1838 4750 50  0001 C CNN
F 3 "~" H 1800 4900 50  0001 C CNN
	1    1800 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C2
U 1 1 6494E898
P 4050 4950
F 0 "C2" V 4305 4950 50  0000 C CNN
F 1 "0805B104K100CT" V 4214 4950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4088 4800 50  0001 C CNN
F 3 "~" H 4050 4950 50  0001 C CNN
	1    4050 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C3
U 1 1 6494F130
P 6400 4950
F 0 "C3" V 6655 4950 50  0000 C CNN
F 1 "0805B104K100CT" V 6564 4950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6438 4800 50  0001 C CNN
F 3 "~" H 6400 4950 50  0001 C CNN
	1    6400 4950
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDPWR #PWR0112
U 1 1 64950902
P 1950 4900
F 0 "#PWR0112" H 1950 4700 50  0001 C CNN
F 1 "GNDPWR" V 1955 4792 50  0000 R CNN
F 2 "" H 1950 4850 50  0001 C CNN
F 3 "" H 1950 4850 50  0001 C CNN
	1    1950 4900
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDPWR #PWR0113
U 1 1 64952DDE
P 4200 4950
F 0 "#PWR0113" H 4200 4750 50  0001 C CNN
F 1 "GNDPWR" H 4204 4796 50  0000 C CNN
F 2 "" H 4200 4900 50  0001 C CNN
F 3 "" H 4200 4900 50  0001 C CNN
	1    4200 4950
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDPWR #PWR0114
U 1 1 64954015
P 6550 4950
F 0 "#PWR0114" H 6550 4750 50  0001 C CNN
F 1 "GNDPWR" H 6554 4796 50  0000 C CNN
F 2 "" H 6550 4900 50  0001 C CNN
F 3 "" H 6550 4900 50  0001 C CNN
	1    6550 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 4750 1650 4750
Wire Wire Line
	1650 4750 1650 4900
Connection ~ 1650 4750
Wire Wire Line
	3900 5000 3900 4950
Connection ~ 3900 4750
Wire Wire Line
	6250 5000 6250 4950
Connection ~ 6250 4950
Wire Wire Line
	6250 4950 6250 4750
Connection ~ 3900 4950
Wire Wire Line
	3900 4950 3900 4750
Wire Wire Line
	3900 4750 6250 4750
Connection ~ 1650 4900
Wire Wire Line
	1650 4900 1650 5000
Wire Wire Line
	1650 4750 3900 4750
NoConn ~ 4000 2450
Text Notes 2650 1200 0    39   ~ 0
0805B104K100CT for capacitors\n100nF
Text GLabel 6950 6000 2    39   BiDi ~ 0
LED_SCL_ROW7
Text GLabel 6950 6900 2    39   BiDi ~ 0
LED_SDA_ROW7
Text GLabel 1350 2050 0    39   BiDi ~ 0
I2C_SCL0
Text GLabel 1350 1950 0    39   BiDi ~ 0
I2C_SDA0
$Comp
L Interface:PCA9306D U10
U 1 1 605F37CA
P 1750 2050
F 0 "U10" H 1750 1369 50  0000 C CNN
F 1 "PCA9306D" H 1750 1460 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 1750 1600 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCA9306.pdf" H 1450 2500 50  0001 C CNN
	1    1750 2050
	-1   0    0    1   
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 605F480A
P 1750 1550
F 0 "#PWR?" H 1750 1350 50  0001 C CNN
F 1 "GNDPWR" V 1755 1442 50  0000 R CNN
F 2 "" H 1750 1500 50  0001 C CNN
F 3 "" H 1750 1500 50  0001 C CNN
	1    1750 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 2550 1350 2550
Wire Wire Line
	1350 2550 1350 2150
Wire Wire Line
	2150 1950 2600 1950
Wire Wire Line
	2600 1950 2600 2250
Wire Wire Line
	2150 2050 2550 2050
Wire Wire Line
	2550 2050 2550 2350
Wire Wire Line
	2550 2350 2600 2350
Text GLabel 1350 2550 0    39   BiDi ~ 0
MAIN_VBUS
Wire Wire Line
	2250 3600 2250 3050
Wire Wire Line
	2250 3050 2600 3050
Wire Wire Line
	2300 3800 2300 3150
Wire Wire Line
	2300 3150 2600 3150
$Comp
L power:GNDPWR #PWR?
U 1 1 60612AD1
P 1700 2800
F 0 "#PWR?" H 1700 2600 50  0001 C CNN
F 1 "GNDPWR" V 1705 2692 50  0000 R CNN
F 2 "" H 1700 2750 50  0001 C CNN
F 3 "" H 1700 2750 50  0001 C CNN
	1    1700 2800
	0    1    1    0   
$EndComp
NoConn ~ 2600 3250
Text GLabel 2600 2550 0    20   Output ~ 0
PICO_33_REF
Text GLabel 1850 2550 2    20   Input ~ 0
PICO_33_REF
Text GLabel 1800 4200 2    20   Input ~ 0
PICO_33_REF
Text GLabel 2100 4000 2    20   Input ~ 0
PICO_33_REF
Text GLabel 1600 4200 0    39   BiDi ~ 0
MAIN_VBUS
$Comp
L Logic_LevelTranslator:TXB0104D U11
U 1 1 6057A89E
P 1700 3500
F 0 "U11" H 1700 2619 50  0000 C CNN
F 1 "TXB0104D" H 1700 2710 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1700 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0104.pdf" H 1810 3595 50  0001 C CNN
	1    1700 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 3400 2200 2850
Wire Wire Line
	2200 2850 2600 2850
Wire Wire Line
	2100 3400 2200 3400
Wire Wire Line
	2100 3200 2150 3200
Wire Wire Line
	2150 3200 2150 2750
Wire Wire Line
	2150 2750 2600 2750
Wire Wire Line
	2100 3600 2250 3600
Wire Wire Line
	2100 3800 2300 3800
$EndSCHEMATC
