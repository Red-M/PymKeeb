EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 500  600  0    59   ~ 0
TODO: Power bus needs to be sorted, see Unified-Daughterboard?
Text GLabel 7100 1700 2    39   Input ~ 0
MAIN_VBUS
Text GLabel 7100 2400 2    39   BiDi ~ 0
KEY_COL16
Text GLabel 7100 2300 2    39   BiDi ~ 0
KEY_COL15
Text GLabel 7100 2600 2    39   BiDi ~ 0
KEY_COL18
Text GLabel 7100 2500 2    39   BiDi ~ 0
KEY_COL17
Text GLabel 7100 2700 2    39   BiDi ~ 0
KEY_COL19
$Comp
L Connector_Generic:Conn_01x04 J0
U 1 1 64341469
P 6000 950
F 0 "J0" H 5918 525 50  0000 C CNN
F 1 "Conn_01x04" H 5918 616 50  0000 C CNN
F 2 "Connector_JST:JST_EH_S4B-EH_1x04_P2.50mm_Horizontal" H 6000 950 50  0001 C CNN
F 3 "" H 6000 950 50  0001 C CNN
F 4 "485-3955" H 6000 950 50  0001 C CNN "Mouser No"
F 5 "1528-2751-ND" H 6000 950 50  0001 C CNN "Digikey Part No"
F 6 "3955" H 6000 950 50  0001 C CNN "Mfr No"
	1    6000 950 
	-1   0    0    1   
$EndComp
$Comp
L power:GNDPWR #PWR0101
U 1 1 6434583E
P 6200 750
F 0 "#PWR0101" H 6200 550 50  0001 C CNN
F 1 "GNDPWR" V 6205 642 50  0000 R CNN
F 2 "" H 6200 700 50  0001 C CNN
F 3 "" H 6200 700 50  0001 C CNN
	1    6200 750 
	0    -1   -1   0   
$EndComp
Text GLabel 6200 1050 2    39   Output ~ 0
MAIN_VBUS
Text GLabel 6200 850  2    39   BiDi ~ 0
USB_DN
Text GLabel 6200 950  2    39   BiDi ~ 0
USB_DP
Text GLabel 4900 4200 0    39   BiDi ~ 0
USB_DN
Text GLabel 4900 4300 0    39   BiDi ~ 0
USB_DP
$Comp
L power:GNDPWR #PWR0111
U 1 1 64912107
P 7100 1800
F 0 "#PWR0111" H 7100 1600 50  0001 C CNN
F 1 "GNDPWR" V 7105 1692 50  0000 R CNN
F 2 "" H 7100 1750 50  0001 C CNN
F 3 "" H 7100 1750 50  0001 C CNN
	1    7100 1800
	0    -1   -1   0   
$EndComp
Text Notes 800  1000 0    39   ~ 0
0805B104K100CT for capacitors\n100nF
Text GLabel 7100 2800 2    39   BiDi ~ 0
KEY_COL20
$Comp
L Connector_Generic:Conn_01x07 J2
U 1 1 60E13064
P 1250 6850
F 0 "J2" H 1168 6425 50  0000 C CNN
F 1 "Conn_01x04" H 1168 6516 50  0000 C CNN
F 2 "Connector_JST:JST_EH_S7B-EH_1x07_P2.50mm_Horizontal" H 1250 6850 50  0001 C CNN
F 3 "" H 1250 6850 50  0001 C CNN
F 4 "485-3955" H 1250 6850 50  0001 C CNN "Mouser No"
F 5 "1528-2751-ND" H 1250 6850 50  0001 C CNN "Digikey Part No"
F 6 "3955" H 1250 6850 50  0001 C CNN "Mfr No"
	1    1250 6850
	-1   0    0    1   
$EndComp
Text GLabel 3350 6750 2    39   BiDi ~ 0
LED_SDA_ROW0_MCU
Text GLabel 3350 6850 2    39   BiDi ~ 0
LED_SDA_STATUS0_MCU
Text GLabel 3350 6950 2    39   BiDi ~ 0
LED_SCL_STATUS0_MCU
$Comp
L conn:Conn_02x20_Top_Bottom J1
U 1 1 609288FA
P 10050 1400
F 0 "J1" V 10267 1346 50  0000 C CNN
F 1 "Conn_02x20_Top_Bottom" V 10176 1346 50  0000 C CNN
F 2 "Custom_pico:PinHeader_2x20_P2.54mm_Vertical_SMD_doublesided" H 10050 1400 50  0001 C CNN
F 3 "~" H 10050 1400 50  0001 C CNN
F 4 "649-95278-102-40LF" H 10050 1400 50  0001 C CNN "Mouser No"
F 5 "95278-102-40LF" H 10050 1400 50  0001 C CNN "Mfr No"
	1    10050 1400
	0    -1   -1   0   
$EndComp
Text GLabel 9650 1600 3    39   BiDi ~ 0
KEY_ROW5
Text GLabel 9550 1600 3    39   BiDi ~ 0
KEY_ROW4
Text GLabel 9450 1600 3    39   BiDi ~ 0
KEY_ROW3
Text GLabel 9350 1600 3    39   BiDi ~ 0
KEY_ROW2
Text GLabel 9250 1600 3    39   BiDi ~ 0
KEY_ROW1
Text GLabel 9150 1600 3    39   BiDi ~ 0
KEY_ROW0
Text GLabel 9750 1600 3    39   BiDi ~ 0
KEY_ROW6
Text GLabel 10050 1100 1    39   BiDi ~ 0
KEY_COL20
Text GLabel 9450 1100 1    39   BiDi ~ 0
KEY_COL14
Text GLabel 9550 1100 1    39   BiDi ~ 0
KEY_COL15
Text GLabel 9650 1100 1    39   BiDi ~ 0
KEY_COL16
Text GLabel 9750 1100 1    39   BiDi ~ 0
KEY_COL17
Text GLabel 9850 1100 1    39   BiDi ~ 0
KEY_COL18
Text GLabel 9950 1100 1    39   BiDi ~ 0
KEY_COL19
Text GLabel 9350 1100 1    39   BiDi ~ 0
KEY_COL13
Text GLabel 11050 1600 3    39   BiDi ~ 0
KEY_COL12
Text GLabel 10950 1600 3    39   BiDi ~ 0
KEY_COL11
Text GLabel 10850 1600 3    39   BiDi ~ 0
KEY_COL10
Text GLabel 10750 1600 3    39   BiDi ~ 0
KEY_COL9
Text GLabel 10650 1600 3    39   BiDi ~ 0
KEY_COL8
Text GLabel 10550 1600 3    39   BiDi ~ 0
KEY_COL7
Text GLabel 10450 1600 3    39   BiDi ~ 0
KEY_COL6
Text GLabel 10350 1600 3    39   BiDi ~ 0
KEY_COL5
Text GLabel 10250 1600 3    39   BiDi ~ 0
KEY_COL4
Text GLabel 10150 1600 3    39   BiDi ~ 0
KEY_COL3
Text GLabel 10050 1600 3    39   BiDi ~ 0
KEY_COL2
Text GLabel 9950 1600 3    39   BiDi ~ 0
KEY_COL1
Text GLabel 9850 1600 3    39   BiDi ~ 0
KEY_COL0
Text GLabel 9150 1100 1    39   BiDi ~ 0
LED_SDA_ROW0
Text GLabel 9250 1100 1    39   BiDi ~ 0
LED_SCL_ROW0
$Comp
L power:GNDPWR #PWR0105
U 1 1 61B1080E
P 10550 1100
F 0 "#PWR0105" H 10550 900 50  0001 C CNN
F 1 "GNDPWR" H 10554 946 50  0000 C CNN
F 2 "" H 10550 1050 50  0001 C CNN
F 3 "" H 10550 1050 50  0001 C CNN
	1    10550 1100
	-1   0    0    1   
$EndComp
Text GLabel 10750 1100 1    39   Input ~ 0
MAIN_VBUS
$Comp
L power:GNDPWR #PWR0115
U 1 1 61B808C8
P 10650 1100
F 0 "#PWR0115" H 10650 900 50  0001 C CNN
F 1 "GNDPWR" H 10654 946 50  0000 C CNN
F 2 "" H 10650 1050 50  0001 C CNN
F 3 "" H 10650 1050 50  0001 C CNN
	1    10650 1100
	-1   0    0    1   
$EndComp
Text GLabel 10850 1100 1    39   Input ~ 0
MAIN_VBUS
$Comp
L Logic_LevelTranslator:TXB0104D U1
U 1 1 608D4B94
P 1600 1950
F 0 "U1" H 1600 1069 50  0000 C CNN
F 1 "TXS0104ED" H 1600 1160 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1600 1200 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/txs0104e.pdf" H 1710 2045 50  0001 C CNN
F 4 "595-TXS0104ED" H 1600 1950 50  0001 C CNN "Mouser No"
F 5 "TXS0104ED" H 1600 1950 50  0001 C CNN "element14 code"
F 6 "296-34699-5-ND" H 1600 1950 50  0001 C CNN "Digikey Part No"
F 7 "TXS0104ED" H 1600 1950 50  0001 C CNN "Mfr No"
	1    1600 1950
	-1   0    0    1   
$EndComp
Connection ~ 2100 2750
Wire Wire Line
	2100 2850 2100 2750
$Comp
L power:GNDPWR #PWR0118
U 1 1 608D4B9F
P 2400 2750
F 0 "#PWR0118" H 2400 2550 50  0001 C CNN
F 1 "GNDPWR" V 2405 2642 50  0000 R CNN
F 2 "" H 2400 2700 50  0001 C CNN
F 3 "" H 2400 2700 50  0001 C CNN
	1    2400 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 608D4BAB
P 2250 2750
AR Path="/608D4BAB" Ref="C2"  Part="1" 
AR Path="/63412601/608D4BAB" Ref="C?"  Part="1" 
F 0 "C2" V 2505 2750 50  0000 C CNN
F 1 "0805B101K100CT" V 2414 2750 50  0001 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2288 2600 50  0001 C CNN
F 3 "" H 2250 2750 50  0001 C CNN
F 4 "791-0805B101K100CT" H 2250 2750 50  0001 C CNN "Mouser No"
F 5 "1856401" H 2250 2750 50  0001 C CNN "element14 code"
F 6 "0805B101K100CT" H 2250 2750 50  0001 C CNN "Mfr No"
	1    2250 2750
	0    1    1    0   
$EndComp
Text GLabel 2100 2850 3    39   Input ~ 0
LED_33_REF
Wire Wire Line
	1700 2650 1700 2750
Connection ~ 1300 2750
Wire Wire Line
	1300 2750 1300 2900
$Comp
L power:GNDPWR #PWR0127
U 1 1 608D4BB5
P 1000 2750
F 0 "#PWR0127" H 1000 2550 50  0001 C CNN
F 1 "GNDPWR" V 1005 2642 50  0000 R CNN
F 2 "" H 1000 2700 50  0001 C CNN
F 3 "" H 1000 2700 50  0001 C CNN
	1    1000 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 2750 1500 2750
$Comp
L Device:C C1
U 1 1 608D4BBE
P 1150 2750
AR Path="/608D4BBE" Ref="C1"  Part="1" 
AR Path="/63412601/608D4BBE" Ref="C?"  Part="1" 
F 0 "C1" V 1405 2750 50  0000 C CNN
F 1 "0805B101K100CT" V 1314 2750 50  0001 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1188 2600 50  0001 C CNN
F 3 "" H 1150 2750 50  0001 C CNN
F 4 "791-0805B101K100CT" H 1150 2750 50  0001 C CNN "Mouser No"
F 5 "1856401" H 1150 2750 50  0001 C CNN "element14 code"
F 6 "0805B101K100CT" H 1150 2750 50  0001 C CNN "Mfr No"
	1    1150 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 2650 1500 2750
Text GLabel 1300 2900 3    39   Input ~ 0
MAIN_VBUS
$Comp
L power:GNDPWR #PWR0128
U 1 1 608D4BC6
P 1600 1250
F 0 "#PWR0128" H 1600 1050 50  0001 C CNN
F 1 "GNDPWR" V 1605 1142 50  0000 R CNN
F 2 "" H 1600 1200 50  0001 C CNN
F 3 "" H 1600 1200 50  0001 C CNN
	1    1600 1250
	0    1    1    0   
$EndComp
Text GLabel 1200 2250 0    39   BiDi ~ 0
LED_SDA_STATUS0
Text GLabel 1200 2050 0    39   BiDi ~ 0
LED_SCL_STATUS0
Text GLabel 2000 2250 2    39   BiDi ~ 0
LED_SDA_STATUS0_MCU
Text GLabel 2000 2050 2    39   BiDi ~ 0
LED_SCL_STATUS0_MCU
Text GLabel 1200 1650 0    39   BiDi ~ 0
LED_SCL_ROW0
Text GLabel 1200 1850 0    39   BiDi ~ 0
LED_SDA_ROW0
Text GLabel 2000 1650 2    39   BiDi ~ 0
LED_SCL_ROW0_MCU
Text GLabel 2000 1850 2    39   BiDi ~ 0
LED_SDA_ROW0_MCU
Text GLabel 3350 6650 2    39   BiDi ~ 0
LED_SCL_ROW0_MCU
Text GLabel 7100 2200 2    39   BiDi ~ 0
KEY_COL14
Text GLabel 7100 2000 2    39   BiDi ~ 0
KEY_COL12
Text GLabel 7100 2100 2    39   BiDi ~ 0
KEY_COL13
Text GLabel 4900 3900 0    39   BiDi ~ 0
KEY_COL10
Text GLabel 4900 4000 0    39   BiDi ~ 0
KEY_COL11
Text GLabel 4900 3400 0    39   BiDi ~ 0
KEY_COL5
Text GLabel 4900 3500 0    39   BiDi ~ 0
KEY_COL6
Text GLabel 4900 3600 0    39   BiDi ~ 0
KEY_COL7
Text GLabel 4900 3700 0    39   BiDi ~ 0
KEY_COL8
Text GLabel 4900 3800 0    39   BiDi ~ 0
KEY_COL9
Text GLabel 11050 1100 1    39   BiDi ~ 0
LED_SCL_STATUS0
Text GLabel 10950 1100 1    39   BiDi ~ 0
LED_SDA_STATUS0
Text GLabel 1450 7150 2    39   Input ~ 0
MAIN_VBUS
$Comp
L power:GNDPWR #PWR0102
U 1 1 60ACEAB9
P 1450 7050
F 0 "#PWR0102" H 1450 6850 50  0001 C CNN
F 1 "GNDPWR" V 1455 6942 50  0000 R CNN
F 2 "" H 1450 7000 50  0001 C CNN
F 3 "" H 1450 7000 50  0001 C CNN
	1    1450 7050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 60EF0352
P 2250 2450
F 0 "R1" V 2137 2450 50  0000 C CNN
F 1 "ERJ-6RED2003V" H 2318 2405 50  0001 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2250 2450 50  0001 C CNN
F 3 "~" H 2250 2450 50  0001 C CNN
F 4 "667-ERJ-6RED2003V" H 2250 2450 50  0001 C CNN "Mouser No"
F 5 "ERJ-6RED2003V" H 2250 2450 50  0001 C CNN "Mfr No"
	1    2250 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 2750 2100 2750
$Comp
L power:GNDPWR #PWR0103
U 1 1 60EF50AA
P 2350 2450
F 0 "#PWR0103" H 2350 2250 50  0001 C CNN
F 1 "GNDPWR" V 2355 2342 50  0000 R CNN
F 2 "" H 2350 2400 50  0001 C CNN
F 3 "" H 2350 2400 50  0001 C CNN
	1    2350 2450
	0    -1   -1   0   
$EndComp
Text GLabel 2350 2550 2    39   Input ~ 0
LED_33_REF
Wire Wire Line
	2150 2550 2150 2450
Wire Wire Line
	2150 2550 2350 2550
Wire Wire Line
	2150 2450 2000 2450
Connection ~ 2150 2450
Text GLabel 7100 1900 2    39   Output ~ 0
33_REF_DIP
Text GLabel 8600 3350 2    39   Input ~ 0
33_REF_DIP
Wire Wire Line
	8350 3500 8450 3500
Wire Wire Line
	8350 3400 8450 3400
Connection ~ 8450 3400
Wire Wire Line
	8450 3400 8450 3500
Wire Wire Line
	8350 3300 8450 3300
Connection ~ 8450 3300
Wire Wire Line
	8450 3300 8450 3350
Wire Wire Line
	8350 3200 8450 3200
Wire Wire Line
	8450 3200 8450 3300
Wire Wire Line
	8450 3350 8600 3350
Connection ~ 8450 3350
Wire Wire Line
	8450 3350 8450 3400
Wire Wire Line
	7100 3200 7750 3200
Wire Wire Line
	7100 3300 7750 3300
Wire Wire Line
	7100 3400 7750 3400
Wire Wire Line
	7100 3500 7750 3500
$Comp
L Switch:SW_DIP_x04 SW1
U 1 1 614F7E1F
P 8050 3300
F 0 "SW1" H 8050 2933 50  0000 C CNN
F 1 "SW_DIP_x04" H 8050 3024 50  0000 C CNN
F 2 "Custom_pico:SW_DIP_x4_W8.61mm_Slide_LowProfile_bothsides" H 8050 3300 50  0001 C CNN
F 3 "~" H 8050 3300 50  0001 C CNN
F 4 "A6SN-4104" H 8050 3300 50  0001 C CNN "Mfr No"
F 5 "653-A6SN-4104" H 8050 3300 50  0001 C CNN "Mouser No"
	1    8050 3300
	-1   0    0    1   
$EndComp
$Comp
L MCU_RaspberryPi_and_Boards:Pico U2
U 1 1 6174F7FF
P 2650 6300
F 0 "U2" H 2650 7515 50  0000 C CNN
F 1 "Pico" H 2650 7424 50  0000 C CNN
F 2 "Custom_pico:RPi_Pico_SMD_TH" V 2650 6300 50  0001 C CNN
F 3 "" H 2650 6300 50  0001 C CNN
	1    2650 6300
	1    0    0    -1  
$EndComp
Text GLabel 3350 5450 2    39   Input ~ 0
MAIN_VBUS
$Comp
L power:GNDPWR #PWR01
U 1 1 61759A1C
P 3350 5550
F 0 "#PWR01" H 3350 5350 50  0001 C CNN
F 1 "GNDPWR" V 3355 5442 50  0000 R CNN
F 2 "" H 3350 5500 50  0001 C CNN
F 3 "" H 3350 5500 50  0001 C CNN
	1    3350 5550
	0    -1   -1   0   
$EndComp
Text GLabel 7100 3000 2    39   BiDi ~ 0
KEYS_CLK
Text GLabel 1950 5650 0    39   BiDi ~ 0
KEYS_CLK
Text GLabel 1950 5850 0    39   BiDi ~ 0
KEYS_MOSI
Text GLabel 4900 2900 0    39   BiDi ~ 0
KEYS_MOSI
NoConn ~ 4900 1700
$Comp
L teensy:Teensy4.1 U0
U 1 1 609A8ABE
P 6000 3850
F 0 "U0" H 6000 6415 50  0000 C CNN
F 1 "Teensy4.1" H 6000 6324 50  0000 C CNN
F 2 "Custom_pico:Teensy41" H 5600 4250 50  0001 C CNN
F 3 "" H 5600 4250 50  0001 C CNN
F 4 "474-DEV-16771" H 6000 3850 50  0001 C CNN "Mouser No"
F 5 "DEV-16771" H 6000 3850 50  0001 C CNN "Mfr No"
	1    6000 3850
	1    0    0    -1  
$EndComp
Text GLabel 4900 2400 0    39   BiDi ~ 0
KEY_ROW6
Text GLabel 4900 1800 0    39   BiDi ~ 0
KEY_ROW0
Text GLabel 4900 1900 0    39   BiDi ~ 0
KEY_ROW1
Text GLabel 4900 2000 0    39   BiDi ~ 0
KEY_ROW2
Text GLabel 4900 2100 0    39   BiDi ~ 0
KEY_ROW3
Text GLabel 4900 2200 0    39   BiDi ~ 0
KEY_ROW4
Text GLabel 4900 2300 0    39   BiDi ~ 0
KEY_ROW5
Text GLabel 4900 3100 0    39   Output ~ 0
33_REF
Text GLabel 4900 2500 0    39   BiDi ~ 0
KEY_COL0
Text GLabel 4900 2600 0    39   BiDi ~ 0
KEY_COL1
Text GLabel 4900 2700 0    39   BiDi ~ 0
KEY_COL2
Text GLabel 4900 2800 0    39   BiDi ~ 0
KEY_COL3
Text GLabel 4900 3000 0    39   BiDi ~ 0
KEY_COL4
Text GLabel 3350 5750 2    39   Input ~ 0
LED_33_REF
$Comp
L conn:GS2 J3
U 1 1 617FEED3
P 4700 3200
F 0 "J3" V 4495 3200 50  0000 C CNN
F 1 "GS2" V 4586 3200 50  0000 C CNN
F 2 "Connectors:GS2" V 4774 3200 50  0001 C CNN
F 3 "" H 4700 3200 50  0001 C CNN
	1    4700 3200
	0    1    1    0   
$EndComp
$Comp
L conn:GS2 J4
U 1 1 618003F5
P 4700 3300
F 0 "J4" V 4495 3300 50  0000 C CNN
F 1 "GS2" V 4586 3300 50  0000 C CNN
F 2 "Connectors:GS2" V 4774 3300 50  0001 C CNN
F 3 "" H 4700 3300 50  0001 C CNN
	1    4700 3300
	0    1    1    0   
$EndComp
Text GLabel 4500 3300 0    39   BiDi ~ 0
LED_SDA_ROW0_MCU
Text GLabel 4500 3200 0    39   BiDi ~ 0
LED_SCL_ROW0_MCU
$Comp
L conn:GS2 J5
U 1 1 6180FE7E
P 4100 3100
F 0 "J5" V 3895 3100 50  0000 C CNN
F 1 "GS2" V 3986 3100 50  0000 C CNN
F 2 "Connectors:GS2" V 4174 3100 50  0001 C CNN
F 3 "" H 4100 3100 50  0001 C CNN
	1    4100 3100
	0    1    1    0   
$EndComp
Text GLabel 3900 3100 0    39   Output ~ 0
LED_33_REF
Text GLabel 4300 3100 2    39   Input ~ 0
33_REF
Wire Wire Line
	1450 6850 1850 6850
Wire Wire Line
	1850 6850 1850 6750
Wire Wire Line
	1850 6750 1950 6750
Wire Wire Line
	1450 6750 1800 6750
Wire Wire Line
	1800 6750 1800 6950
Wire Wire Line
	1800 6950 1950 6950
Wire Wire Line
	1450 6950 1750 6950
Wire Wire Line
	1750 6950 1750 6650
Wire Wire Line
	1750 6650 1950 6650
Wire Wire Line
	1450 6650 1700 6650
Wire Wire Line
	1700 6650 1700 7150
Wire Wire Line
	1700 7150 1950 7150
Wire Wire Line
	1950 7250 1650 7250
Wire Wire Line
	1650 7250 1650 6550
Wire Wire Line
	1650 6550 1450 6550
$EndSCHEMATC
