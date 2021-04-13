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
Text Notes 2150 950  0    59   ~ 0
TODO: Power bus needs to be sorted, see Unified-Daughterboard?\n\nMCP23017_SO needs to have the interrupt pins (INT*)\nconfigured as not open-drain as the TXB0104D can't handle open-drain
Text Notes 10650 1350 2    59   ~ 0
KEY_* originates from this sheet
NoConn ~ 3950 4250
NoConn ~ 4050 4250
NoConn ~ 4150 4250
Text GLabel 4750 2250 2    39   Input ~ 0
MAIN_VBUS
NoConn ~ 3350 2350
NoConn ~ 4750 2650
NoConn ~ 4750 2750
NoConn ~ 4750 2850
NoConn ~ 4750 2950
NoConn ~ 4750 3050
NoConn ~ 4750 3250
NoConn ~ 4750 3350
NoConn ~ 4750 3850
NoConn ~ 3350 3850
NoConn ~ 3350 3750
NoConn ~ 3350 3650
NoConn ~ 3350 3350
NoConn ~ 3350 3250
NoConn ~ 3350 2850
NoConn ~ 4750 2150
Text GLabel 2850 6100 2    39   BiDi ~ 0
KEY_ROW5
Text GLabel 2850 6000 2    39   BiDi ~ 0
KEY_ROW4
Text GLabel 2850 5900 2    39   BiDi ~ 0
KEY_ROW3
Text GLabel 2850 5800 2    39   BiDi ~ 0
KEY_ROW2
Text GLabel 2850 5700 2    39   BiDi ~ 0
KEY_ROW1
Text GLabel 2850 5600 2    39   BiDi ~ 0
KEY_ROW0
Text GLabel 5100 6700 2    39   BiDi ~ 0
KEY_COL9
Text GLabel 5100 6600 2    39   BiDi ~ 0
KEY_COL8
Text GLabel 5100 6500 2    39   BiDi ~ 0
KEY_COL7
Text GLabel 2850 7100 2    39   BiDi ~ 0
KEY_COL6
Text GLabel 2850 7000 2    39   BiDi ~ 0
KEY_COL5
Text GLabel 2850 6900 2    39   BiDi ~ 0
KEY_COL4
Text GLabel 2850 6800 2    39   BiDi ~ 0
KEY_COL3
Text GLabel 2850 6700 2    39   BiDi ~ 0
KEY_COL2
Text GLabel 2850 6600 2    39   BiDi ~ 0
KEY_COL1
Text GLabel 2850 6500 2    39   BiDi ~ 0
KEY_COL0
Text GLabel 2850 6200 2    39   BiDi ~ 0
KEY_ROW6
Text GLabel 5100 6900 2    39   BiDi ~ 0
KEY_COL11
Text GLabel 5100 6800 2    39   BiDi ~ 0
KEY_COL10
Text GLabel 5100 7100 2    39   BiDi ~ 0
KEY_COL13
Text GLabel 5100 7000 2    39   BiDi ~ 0
KEY_COL12
Text GLabel 1450 5600 0    39   BiDi ~ 0
I2C_SDA0
Text GLabel 1450 5700 0    39   BiDi ~ 0
I2C_SCL0
Text GLabel 5100 5800 2    39   BiDi ~ 0
KEY_COL16
Text GLabel 5100 5700 2    39   BiDi ~ 0
KEY_COL15
Text GLabel 5100 6000 2    39   BiDi ~ 0
KEY_COL18
Text GLabel 5100 5900 2    39   BiDi ~ 0
KEY_COL17
Text GLabel 5100 6100 2    39   BiDi ~ 0
KEY_COL19
Text GLabel 5100 5600 2    39   BiDi ~ 0
KEY_COL14
Text GLabel 1700 5050 0    39   Input ~ 0
MAIN_VBUS
$Comp
L power:GNDPWR #PWR0102
U 1 1 633C353A
P 2150 7500
F 0 "#PWR0102" H 2150 7300 50  0001 C CNN
F 1 "GNDPWR" V 2155 7392 50  0000 R CNN
F 2 "" H 2150 7450 50  0001 C CNN
F 3 "" H 2150 7450 50  0001 C CNN
	1    2150 7500
	0    -1   -1   0   
$EndComp
$Comp
L Interface_Expansion:MCP23017_SO U2
U 1 1 633D7503
P 4400 6400
F 0 "U2" H 4400 7681 50  0000 C CNN
F 1 "MCP23017-E/SO" H 4400 7590 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 4600 5400 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 4600 5300 50  0001 L CNN
F 4 "579-MCP23017-E/SO" H 4400 6400 50  0001 C CNN "Mouser No"
	1    4400 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0103
U 1 1 633D9D02
P 4400 7500
F 0 "#PWR0103" H 4400 7300 50  0001 C CNN
F 1 "GNDPWR" V 4405 7392 50  0000 R CNN
F 2 "" H 4400 7450 50  0001 C CNN
F 3 "" H 4400 7450 50  0001 C CNN
	1    4400 7500
	0    -1   -1   0   
$EndComp
Text GLabel 3700 5600 0    39   BiDi ~ 0
I2C_SDA0
Text GLabel 3700 5700 0    39   BiDi ~ 0
I2C_SCL0
$Sheet
S 8300 750  500  300 
U 63412601
F0 "LED_strings" 39
F1 "led_strings.sch" 39
$EndSheet
$Comp
L Connector_Generic:Conn_01x04 J0
U 1 1 64341469
P 7550 2550
F 0 "J0" H 7468 2125 50  0000 C CNN
F 1 "Conn_01x04" H 7468 2216 50  0000 C CNN
F 2 "Connector_JST:JST_EH_S4B-EH_1x04_P2.50mm_Horizontal" H 7550 2550 50  0001 C CNN
F 3 "" H 7550 2550 50  0001 C CNN
F 4 "485-3955" H 7550 2550 50  0001 C CNN "Mouser No"
	1    7550 2550
	-1   0    0    1   
$EndComp
$Comp
L power:GNDPWR #PWR0101
U 1 1 6434583E
P 7750 2350
F 0 "#PWR0101" H 7750 2150 50  0001 C CNN
F 1 "GNDPWR" V 7755 2242 50  0000 R CNN
F 2 "" H 7750 2300 50  0001 C CNN
F 3 "" H 7750 2300 50  0001 C CNN
	1    7750 2350
	0    -1   -1   0   
$EndComp
Text GLabel 7750 2650 2    39   Output ~ 0
MAIN_VBUS
Text GLabel 7750 2450 2    39   BiDi ~ 0
USB_DN
Text GLabel 7750 2550 2    39   BiDi ~ 0
USB_DP
NoConn ~ 2850 7200
Text GLabel 1450 6200 0    39   BiDi ~ 0
IO_INT0
Text GLabel 1450 6300 0    39   BiDi ~ 0
IO_INT1
Text GLabel 3700 6200 0    39   BiDi ~ 0
IO_INT2
Text GLabel 3700 6300 0    39   BiDi ~ 0
IO_INT3
$Comp
L Interface_Expansion:MCP23017_SO U1
U 1 1 633C5696
P 2150 6400
F 0 "U1" H 2150 7681 50  0000 C CNN
F 1 "MCP23017-E/SO" H 2150 7590 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 2350 5400 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 2350 5300 50  0001 L CNN
F 4 "579-MCP23017-E/SO" H 2150 6400 50  0001 C CNN "Mouser No"
	1    2150 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0104
U 1 1 64901E61
P 1450 7200
F 0 "#PWR0104" H 1450 7000 50  0001 C CNN
F 1 "GNDPWR" V 1454 7091 50  0000 R CNN
F 2 "" H 1450 7150 50  0001 C CNN
F 3 "" H 1450 7150 50  0001 C CNN
	1    1450 7200
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0106
U 1 1 64903402
P 1450 7100
F 0 "#PWR0106" H 1450 6900 50  0001 C CNN
F 1 "GNDPWR" V 1454 6991 50  0000 R CNN
F 2 "" H 1450 7050 50  0001 C CNN
F 3 "" H 1450 7050 50  0001 C CNN
	1    1450 7100
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0107
U 1 1 649035CF
P 1450 7000
F 0 "#PWR0107" H 1450 6800 50  0001 C CNN
F 1 "GNDPWR" V 1454 6891 50  0000 R CNN
F 2 "" H 1450 6950 50  0001 C CNN
F 3 "" H 1450 6950 50  0001 C CNN
	1    1450 7000
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0108
U 1 1 649043C1
P 3700 7100
F 0 "#PWR0108" H 3700 6900 50  0001 C CNN
F 1 "GNDPWR" V 3704 6991 50  0000 R CNN
F 2 "" H 3700 7050 50  0001 C CNN
F 3 "" H 3700 7050 50  0001 C CNN
	1    3700 7100
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0109
U 1 1 64904490
P 3700 7000
F 0 "#PWR0109" H 3700 6800 50  0001 C CNN
F 1 "GNDPWR" V 3704 6891 50  0000 R CNN
F 2 "" H 3700 6950 50  0001 C CNN
F 3 "" H 3700 6950 50  0001 C CNN
	1    3700 7000
	0    1    1    0   
$EndComp
NoConn ~ 3350 2550
Text GLabel 3700 6500 0    39   Input ~ 0
MAIN_VBUS
Text GLabel 1450 6500 0    39   Input ~ 0
MAIN_VBUS
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 6490C06D
P 8600 2550
F 0 "J1" H 8518 2125 50  0000 C CNN
F 1 "Conn_01x04" H 8518 2216 50  0000 C CNN
F 2 "Connector_JST:JST_EH_S4B-EH_1x04_P2.50mm_Horizontal" H 8600 2550 50  0001 C CNN
F 3 "" H 8600 2550 50  0001 C CNN
F 4 "485-3955" H 8600 2550 50  0001 C CNN "Mouser No"
	1    8600 2550
	-1   0    0    1   
$EndComp
Text GLabel 8800 2650 2    39   BiDi ~ 0
PICO_SDA0
Text GLabel 8800 2550 2    39   BiDi ~ 0
PICO_SCL0
Text GLabel 4250 1950 1    39   BiDi ~ 0
USB_DN
Text GLabel 4350 1950 1    39   BiDi ~ 0
USB_DP
$Comp
L power:GNDPWR #PWR0111
U 1 1 64912107
P 3750 1950
F 0 "#PWR0111" H 3750 1750 50  0001 C CNN
F 1 "GNDPWR" V 3755 1842 50  0000 R CNN
F 2 "" H 3750 1900 50  0001 C CNN
F 3 "" H 3750 1900 50  0001 C CNN
	1    3750 1950
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 64942561
P 2300 5200
F 0 "C1" V 2555 5200 50  0000 C CNN
F 1 "0805B104K100CT" V 2464 5200 50  0001 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2338 5050 50  0001 C CNN
F 3 "" H 2300 5200 50  0001 C CNN
F 4 "791-0805B104K100CT" H 2300 5200 50  0001 C CNN "Mouser No"
	1    2300 5200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 6494E898
P 4550 5250
F 0 "C2" V 4805 5250 50  0000 C CNN
F 1 "0805B104K100CT" V 4714 5250 50  0001 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4588 5100 50  0001 C CNN
F 3 "" H 4550 5250 50  0001 C CNN
F 4 "791-0805B104K100CT" H 4550 5250 50  0001 C CNN "Mouser No"
	1    4550 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDPWR #PWR0112
U 1 1 64950902
P 2450 5200
F 0 "#PWR0112" H 2450 5000 50  0001 C CNN
F 1 "GNDPWR" V 2455 5092 50  0000 R CNN
F 2 "" H 2450 5150 50  0001 C CNN
F 3 "" H 2450 5150 50  0001 C CNN
	1    2450 5200
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDPWR #PWR0113
U 1 1 64952DDE
P 4700 5250
F 0 "#PWR0113" H 4700 5050 50  0001 C CNN
F 1 "GNDPWR" H 4704 5096 50  0000 C CNN
F 2 "" H 4700 5200 50  0001 C CNN
F 3 "" H 4700 5200 50  0001 C CNN
	1    4700 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 5050 2150 5050
Wire Wire Line
	2150 5050 2150 5200
Connection ~ 2150 5050
Wire Wire Line
	4400 5300 4400 5250
Connection ~ 4400 5250
Wire Wire Line
	4400 5250 4400 5050
Connection ~ 2150 5200
Wire Wire Line
	2150 5200 2150 5300
Wire Wire Line
	2150 5050 4400 5050
Text Notes 2650 1200 0    39   ~ 0
0805B104K100CT for capacitors\n100nF
Text GLabel 1000 1950 0    39   BiDi ~ 0
I2C_SCL0
Text GLabel 1000 1850 0    39   BiDi ~ 0
I2C_SDA0
$Comp
L power:GNDPWR #PWR0116
U 1 1 605F480A
P 2100 1450
F 0 "#PWR0116" H 2100 1250 50  0001 C CNN
F 1 "GNDPWR" V 2105 1342 50  0000 R CNN
F 2 "" H 2100 1400 50  0001 C CNN
F 3 "" H 2100 1400 50  0001 C CNN
	1    2100 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 1850 3350 2150
Wire Wire Line
	3300 1950 3300 2250
Wire Wire Line
	3300 2250 3350 2250
NoConn ~ 3350 3150
NoConn ~ 2850 6300
Text GLabel 3150 1850 1    39   BiDi ~ 0
PICO_SDA0
Text GLabel 3150 1950 3    39   BiDi ~ 0
PICO_SCL0
Text GLabel 5100 6200 2    39   BiDi ~ 0
KEY_COL20
Text GLabel 3700 7200 0    39   Input ~ 0
PICO_33_REF
NoConn ~ 5100 7200
NoConn ~ 5100 6300
Wire Wire Line
	3350 1850 2550 1850
Wire Wire Line
	3300 1950 2850 1950
Wire Wire Line
	2200 2450 2400 2450
Wire Wire Line
	2400 2450 2400 2400
Wire Wire Line
	2400 2400 2550 2400
$Comp
L Device:R_Small_US R4
U 1 1 606F0576
P 2550 1950
F 0 "R4" H 2618 1996 50  0000 L CNN
F 1 "APC0805B1K00N" H 2618 1905 50  0001 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2550 1950 50  0001 C CNN
F 3 "" H 2550 1950 50  0001 C CNN
F 4 "284-APC0805B1K00N" H 2550 1950 50  0001 C CNN "Mouser No"
	1    2550 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 606F59BD
P 2850 2050
F 0 "R5" H 2918 2096 50  0000 L CNN
F 1 "APC0805B1K00N" H 2918 2005 50  0001 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2850 2050 50  0001 C CNN
F 3 "" H 2850 2050 50  0001 C CNN
F 4 "284-APC0805B1K00N" H 2850 2050 50  0001 C CNN "Mouser No"
	1    2850 2050
	1    0    0    -1  
$EndComp
Connection ~ 2550 1850
Wire Wire Line
	2550 1850 2500 1850
Wire Wire Line
	2550 2050 2550 2150
Connection ~ 2550 2150
Wire Wire Line
	2550 2150 2550 2400
Connection ~ 2850 1950
Wire Wire Line
	2850 1950 2500 1950
Wire Wire Line
	2550 2150 2850 2150
Text GLabel 1150 2800 0    39   Input ~ 0
MAIN_VBUS
$Comp
L Device:C C4
U 1 1 606FEFDD
P 1600 1550
AR Path="/606FEFDD" Ref="C4"  Part="1" 
AR Path="/63412601/606FEFDD" Ref="C?"  Part="1" 
F 0 "C4" V 1855 1550 50  0000 C CNN
F 1 "0805B101K100CT" V 1764 1550 50  0001 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1638 1400 50  0001 C CNN
F 3 "" H 1600 1550 50  0001 C CNN
F 4 "791-0805B101K100CT" H 1600 1550 50  0001 C CNN "Mouser No"
	1    1600 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0122
U 1 1 606FEFE4
P 1600 1400
F 0 "#PWR0122" H 1600 1200 50  0001 C CNN
F 1 "GNDPWR" V 1605 1292 50  0000 R CNN
F 2 "" H 1600 1350 50  0001 C CNN
F 3 "" H 1600 1350 50  0001 C CNN
	1    1600 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 60705587
P 1200 2600
F 0 "R1" H 1268 2646 50  0000 L CNN
F 1 "APC0805B1K00N" H 1268 2555 50  0001 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1200 2600 50  0001 C CNN
F 3 "" H 1200 2600 50  0001 C CNN
F 4 "284-APC0805B1K00N" H 1200 2600 50  0001 C CNN "Mouser No"
	1    1200 2600
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 6070558D
P 1400 2550
F 0 "R2" H 1468 2596 50  0000 L CNN
F 1 "APC0805B1K00N" H 1468 2505 50  0001 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1400 2550 50  0001 C CNN
F 3 "" H 1400 2550 50  0001 C CNN
F 4 "284-APC0805B1K00N" H 1400 2550 50  0001 C CNN "Mouser No"
	1    1400 2550
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 607173DF
P 1600 2700
F 0 "R3" V 1805 2700 50  0000 C CNN
F 1 "ERJ-6RED2003V" V 1714 2700 50  0001 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1600 2700 50  0001 C CNN
F 3 "" H 1600 2700 50  0001 C CNN
F 4 "667-ERJ-6RED2003V" H 1600 2700 50  0001 C CNN "Mouser No"
	1    1600 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 2700 1200 2800
Connection ~ 1200 2800
Wire Wire Line
	1200 2800 1150 2800
Connection ~ 2400 2450
Wire Wire Line
	2400 2450 2450 2450
Text GLabel 2450 2450 2    39   Input ~ 0
PICO_33_REF
Text GLabel 3350 2450 0    39   Output ~ 0
PICO_33_REF
$Comp
L RPI_Pico:Pico U0
U 1 1 62848745
P 4050 3100
F 0 "U0" H 4050 4315 50  0000 C CNN
F 1 "~" H 4050 4224 50  0000 C CNN
F 2 "Custom_pico:RPi_Pico_SMD_TH" V 4050 3100 50  0001 C CNN
F 3 "" H 4050 3100 50  0001 C CNN
	1    4050 3100
	1    0    0    -1  
$EndComp
NoConn ~ 4750 2450
Wire Wire Line
	1000 1950 1400 1950
$Comp
L Interface:PCA9306D U10
U 1 1 605F37CA
P 2100 1950
F 0 "U10" H 2100 1269 50  0000 C CNN
F 1 "PCA9306DP,118" H 2100 1360 50  0000 C CNN
F 2 "Package_SO:TSSOP-8_3x3mm_P0.65mm" H 2100 1500 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCA9306.pdf" H 1800 2400 50  0001 C CNN
F 4 "771-PCA9306DP-T" H 2100 1950 50  0001 C CNN "Mouser No"
	1    2100 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 1850 1200 1850
Wire Wire Line
	1200 1850 1200 2500
Connection ~ 1200 1850
Wire Wire Line
	1200 1850 1700 1850
Wire Wire Line
	1400 1950 1400 2450
Connection ~ 1400 1950
Wire Wire Line
	1400 1950 1700 1950
Wire Wire Line
	1600 2450 2000 2450
Wire Wire Line
	1600 2050 1700 2050
Wire Wire Line
	1600 2600 1600 2450
Wire Wire Line
	1600 2450 1600 2050
Connection ~ 1600 2450
Wire Wire Line
	1600 2050 1600 1700
Connection ~ 1600 2050
Wire Wire Line
	1200 2800 1400 2800
Wire Wire Line
	1400 2650 1400 2800
Connection ~ 1400 2800
Wire Wire Line
	1400 2800 1600 2800
$Comp
L Connector_Generic:Conn_01x07 J2
U 1 1 60E13064
P 5350 3650
F 0 "J2" H 5268 3225 50  0000 C CNN
F 1 "Conn_01x04" H 5268 3316 50  0000 C CNN
F 2 "Connector_JST:JST_EH_S7B-EH_1x07_P2.50mm_Horizontal" H 5350 3650 50  0001 C CNN
F 3 "" H 5350 3650 50  0001 C CNN
F 4 "485-3955" H 5350 3650 50  0001 C CNN "Mouser No"
	1    5350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2350 4900 2350
Wire Wire Line
	4900 2350 4900 3450
Wire Wire Line
	5000 3350 5000 2550
Wire Wire Line
	5000 2550 4750 2550
Wire Wire Line
	5000 3350 5150 3350
Wire Wire Line
	4900 3450 5150 3450
Wire Wire Line
	5100 3750 5100 3550
Wire Wire Line
	5100 3550 5150 3550
Wire Wire Line
	4750 3650 5150 3650
Wire Wire Line
	4750 3750 5100 3750
Wire Wire Line
	5150 3750 5150 3800
Wire Wire Line
	5150 3800 4800 3800
Wire Wire Line
	4800 3800 4800 3950
Wire Wire Line
	4800 3950 4750 3950
Wire Wire Line
	4750 3550 4950 3550
Wire Wire Line
	4950 3550 4950 3850
Wire Wire Line
	4950 3850 5150 3850
Wire Wire Line
	4750 3450 4850 3450
Wire Wire Line
	4850 3450 4850 3950
Wire Wire Line
	4850 3950 5150 3950
NoConn ~ 4750 4050
Text GLabel 3350 3950 0    39   BiDi ~ 0
LED_SCL_ROW0
Text GLabel 3350 4050 0    39   BiDi ~ 0
LED_SDA_ROW0
Connection ~ 2700 4200
Wire Wire Line
	2700 4300 2700 4200
Connection ~ 1900 4200
Wire Wire Line
	1900 4200 1900 4350
Wire Wire Line
	2700 3300 2700 2750
Wire Wire Line
	2600 3500 2750 3500
Wire Wire Line
	2600 3700 2800 3700
$Comp
L power:GNDPWR #PWR0121
U 1 1 606DD002
P 3000 4200
F 0 "#PWR0121" H 3000 4000 50  0001 C CNN
F 1 "GNDPWR" V 3005 4092 50  0000 R CNN
F 2 "" H 3000 4150 50  0001 C CNN
F 3 "" H 3000 4150 50  0001 C CNN
	1    3000 4200
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDPWR #PWR0120
U 1 1 606DBA2C
P 1600 4200
F 0 "#PWR0120" H 1600 4000 50  0001 C CNN
F 1 "GNDPWR" V 1605 4092 50  0000 R CNN
F 2 "" H 1600 4150 50  0001 C CNN
F 3 "" H 1600 4150 50  0001 C CNN
	1    1600 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 4200 2100 4200
Wire Wire Line
	2300 4200 2600 4200
Wire Wire Line
	2600 4200 2700 4200
Connection ~ 2600 4200
Wire Wire Line
	2600 3900 2600 4200
$Comp
L Device:C C5
U 1 1 606D1D99
P 1750 4200
AR Path="/606D1D99" Ref="C5"  Part="1" 
AR Path="/63412601/606D1D99" Ref="C?"  Part="1" 
F 0 "C5" V 2005 4200 50  0000 C CNN
F 1 "0805B101K100CT" V 1914 4200 50  0001 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1788 4050 50  0001 C CNN
F 3 "" H 1750 4200 50  0001 C CNN
F 4 "791-0805B101K100CT" H 1750 4200 50  0001 C CNN "Mouser No"
	1    1750 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C7
U 1 1 606CFB11
P 2850 4200
AR Path="/606CFB11" Ref="C7"  Part="1" 
AR Path="/63412601/606CFB11" Ref="C?"  Part="1" 
F 0 "C7" V 3105 4200 50  0000 C CNN
F 1 "0805B101K100CT" V 3014 4200 50  0001 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2888 4050 50  0001 C CNN
F 3 "" H 2850 4200 50  0001 C CNN
F 4 "791-0805B101K100CT" H 2850 4200 50  0001 C CNN "Mouser No"
	1    2850 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 4100 2100 4200
Wire Wire Line
	2300 4100 2300 4200
Wire Wire Line
	2650 3100 2650 2650
Wire Wire Line
	2600 3100 2650 3100
Wire Wire Line
	2600 3300 2700 3300
$Comp
L Logic_LevelTranslator:TXB0104D U11
U 1 1 6057A89E
P 2200 3400
F 0 "U11" H 2200 2519 50  0000 C CNN
F 1 "TXB0104D" H 2200 2610 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2200 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0104.pdf" H 2310 3495 50  0001 C CNN
F 4 "TXB0104D" H 2200 3400 50  0001 C CNN "Mouser No"
	1    2200 3400
	-1   0    0    1   
$EndComp
Text GLabel 1900 4350 3    39   Input ~ 0
MAIN_VBUS
$Comp
L power:GNDPWR #PWR0117
U 1 1 60612AD1
P 2200 2700
F 0 "#PWR0117" H 2200 2500 50  0001 C CNN
F 1 "GNDPWR" V 2205 2592 50  0000 R CNN
F 2 "" H 2200 2650 50  0001 C CNN
F 3 "" H 2200 2650 50  0001 C CNN
	1    2200 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 3700 2800 3050
Wire Wire Line
	2750 3500 2750 2950
Text GLabel 1800 3700 0    39   BiDi ~ 0
IO_INT3
Text GLabel 1800 3500 0    39   BiDi ~ 0
IO_INT2
Text GLabel 1800 3300 0    39   BiDi ~ 0
IO_INT1
Text GLabel 1800 3100 0    39   BiDi ~ 0
IO_INT0
Wire Wire Line
	2650 2650 3350 2650
Wire Wire Line
	2700 2750 3350 2750
Wire Wire Line
	2750 2950 3350 2950
Wire Wire Line
	2800 3050 3350 3050
Text GLabel 2700 4300 3    39   Input ~ 0
PICO_33_REF
Text GLabel 3350 3550 0    39   BiDi ~ 0
LED_SDA_STATUS0
Text GLabel 3350 3450 0    39   BiDi ~ 0
LED_SCL_STATUS0
NoConn ~ 4750 3150
$EndSCHEMATC
