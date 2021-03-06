EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
$Comp
L Conductivity_Sensor_V1-rescue:Custom_LOLIN_V3-ESP8266 U2
U 1 1 62643FD1
P 1650 5200
F 0 "U2" H 1625 6115 50  0000 C CNN
F 1 "Custom_LOLIN_V3" H 1625 6024 50  0000 C CNN
F 2 "ESP8266:NodeMCU-LoLinV3" H 900 5850 50  0001 C CNN
F 3 "" H 900 5850 50  0001 C CNN
	1    1650 5200
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM317_TO-220 Voltage_regulator1
U 1 1 62645390
P 2300 1400
F 0 "Voltage_regulator1" H 2300 1642 50  0000 C CNN
F 1 "LM317_TO-220" H 2300 1551 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2300 1650 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 2300 1400 50  0001 C CNN
	1    2300 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C1
U 1 1 62645DD3
P 1700 1600
F 0 "C1" H 1815 1646 50  0000 L CNN
F 1 "0.1µf" H 1815 1555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1700 1600 50  0001 C CNN
F 3 "~" H 1700 1600 50  0001 C CNN
	1    1700 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C2
U 1 1 62648DAA
P 3050 1600
F 0 "C2" H 3165 1646 50  0000 L CNN
F 1 "1µf" H 3165 1555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3050 1600 50  0001 C CNN
F 3 "~" H 3050 1600 50  0001 C CNN
	1    3050 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 62649FC7
P 2300 1950
F 0 "R2" H 2370 1996 50  0000 L CNN
F 1 "1.5K" H 2370 1905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2230 1950 50  0001 C CNN
F 3 "~" H 2300 1950 50  0001 C CNN
	1    2300 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6264A3E6
P 2750 1650
F 0 "R1" H 2820 1696 50  0000 L CNN
F 1 "510" H 2820 1605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2680 1650 50  0001 C CNN
F 3 "~" H 2750 1650 50  0001 C CNN
	1    2750 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1450 1700 1400
Wire Wire Line
	1700 1400 2000 1400
Wire Wire Line
	1700 1750 1700 2300
Wire Wire Line
	1700 2300 2300 2300
Wire Wire Line
	3050 2300 3050 1750
Wire Wire Line
	3050 1450 3050 1400
Wire Wire Line
	3050 1400 2750 1400
Wire Wire Line
	3050 1400 3700 1400
Connection ~ 3050 1400
Wire Wire Line
	2300 1800 2300 1700
Wire Wire Line
	2300 2100 2300 2300
Connection ~ 2300 2300
Wire Wire Line
	2300 2300 3050 2300
Wire Wire Line
	2750 1500 2750 1400
Connection ~ 2750 1400
Wire Wire Line
	2750 1400 2600 1400
Wire Wire Line
	2750 1800 2300 1800
Connection ~ 2300 1800
Wire Wire Line
	1700 1400 1300 1400
Connection ~ 1700 1400
Wire Wire Line
	2300 2300 2300 2400
Text GLabel 2300 2400 0    50   Input ~ 0
GND
Text GLabel 1300 1400 0    50   Input ~ 0
V+_12V
Text GLabel 3700 1400 2    50   Input ~ 0
REGULATED_5V+
Wire Notes Line
	4800 1000 4800 2500
Wire Notes Line
	750  2500 750  1000
Text Notes 800  950  0    50   ~ 0
VOLTAGE REGULATOR
Wire Notes Line
	5250 1000 10700 1000
Wire Notes Line
	10700 1000 10700 2550
Wire Notes Line
	10700 2550 5250 2550
Wire Notes Line
	5250 2550 5250 1000
Text Notes 5250 950  0    50   ~ 0
INPUTS
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 6265527E
P 3500 2300
F 0 "J2" V 3372 2380 50  0000 L CNN
F 1 "Test pad 5v+" V 3463 2380 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 3500 2300 50  0001 C CNN
F 3 "~" H 3500 2300 50  0001 C CNN
	1    3500 2300
	0    1    1    0   
$EndComp
Text GLabel 3500 2100 1    50   Input ~ 0
REGULATED_5V+
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 62657918
P 5550 2400
F 0 "J4" V 5422 2480 50  0000 L CNN
F 1 "Test pad 12v+" V 5513 2480 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 5550 2400 50  0001 C CNN
F 3 "~" H 5550 2400 50  0001 C CNN
	1    5550 2400
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 6265791E
P 6450 2400
F 0 "J5" V 6322 2480 50  0000 L CNN
F 1 "Test pad GND" V 6413 2480 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 6450 2400 50  0001 C CNN
F 3 "~" H 6450 2400 50  0001 C CNN
	1    6450 2400
	0    1    1    0   
$EndComp
Text GLabel 6450 2200 1    50   Input ~ 0
GND
Text GLabel 5550 2200 1    50   Input ~ 0
V+_12V
Wire Notes Line
	750  2500 4800 2500
Wire Notes Line
	750  1000 4800 1000
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 6265AF76
P 12950 1550
F 0 "J6" H 13030 1542 50  0000 L CNN
F 1 "Screen connector" H 13030 1451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 12950 1550 50  0001 C CNN
F 3 "~" H 12950 1550 50  0001 C CNN
	1    12950 1550
	0    -1   -1   0   
$EndComp
Text GLabel 12850 1750 3    50   Input ~ 0
GND
Text GLabel 12950 1750 3    50   Input ~ 0
REGULATED_5V+
Text GLabel 13050 1750 3    50   Input ~ 0
SCL
Text GLabel 13150 1750 3    50   Input ~ 0
SDA
Text GLabel 2000 4650 2    50   Input ~ 0
SCL
Text GLabel 2000 4750 2    50   Input ~ 0
SDA
Text GLabel 1250 5950 0    50   Input ~ 0
REGULATED_5V+
Text GLabel 1250 5850 0    50   Input ~ 0
GND
$Comp
L Device:C C3
U 1 1 62664AC2
P 7200 5650
F 0 "C3" H 7315 5696 50  0000 L CNN
F 1 "C" H 7315 5605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 7238 5500 50  0001 C CNN
F 3 "~" H 7200 5650 50  0001 C CNN
	1    7200 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 62665191
P 7800 5600
F 0 "C4" H 7915 5646 50  0000 L CNN
F 1 "C" H 7915 5555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 7838 5450 50  0001 C CNN
F 3 "~" H 7800 5600 50  0001 C CNN
	1    7800 5600
	1    0    0    -1  
$EndComp
Text GLabel 8300 5450 3    50   Input ~ 0
GND
Wire Wire Line
	7200 4850 7800 4850
Wire Wire Line
	7200 4850 7200 5400
Wire Wire Line
	7200 5400 7650 5400
Wire Wire Line
	7650 5400 7650 5850
Wire Wire Line
	7650 5850 8800 5850
Wire Wire Line
	8800 5850 8800 5250
Connection ~ 7200 5400
Wire Wire Line
	7200 5400 7200 5500
Connection ~ 8800 5850
Wire Wire Line
	7200 5800 7200 6250
Wire Wire Line
	7200 6250 7800 6250
Wire Wire Line
	7800 5750 7800 6250
Wire Wire Line
	7800 5450 7700 5450
Wire Wire Line
	7700 5450 7700 5050
Wire Wire Line
	7700 5050 7800 5050
Text GLabel 10900 5850 2    50   Input ~ 0
OUT1
Wire Wire Line
	8800 5050 9600 5050
Wire Wire Line
	9600 5050 9600 4800
$Comp
L Device:R R5
U 1 1 6266ED0E
P 9600 4650
F 0 "R5" H 9670 4696 50  0000 L CNN
F 1 "Resistor Divider" H 9670 4605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9530 4650 50  0001 C CNN
F 3 "~" H 9600 4650 50  0001 C CNN
	1    9600 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5050 9750 5050
Connection ~ 9600 5050
Text GLabel 9750 5050 2    50   Input ~ 0
OUT2
Wire Wire Line
	9600 4500 9600 3850
Wire Wire Line
	9600 3850 7650 3850
Wire Wire Line
	7650 3850 7650 4350
Wire Wire Line
	7650 5250 7800 5250
Text GLabel 1250 5550 0    50   Input ~ 0
ESP8266_3V
Text GLabel 7300 4350 0    50   Input ~ 0
ESP8266_3V
Wire Wire Line
	7300 4350 7650 4350
Connection ~ 7650 4350
Wire Wire Line
	7650 4350 7650 5250
Wire Wire Line
	8300 4650 8300 4350
Wire Wire Line
	8300 4350 7650 4350
Wire Wire Line
	8800 4850 9050 4850
Text GLabel 9050 4850 2    50   Input ~ 0
555_out
Text GLabel 2000 5450 2    50   Input ~ 0
555_out
Wire Notes Line
	6100 3400 11900 3400
Wire Notes Line
	11900 3400 11900 6900
Wire Notes Line
	11900 6900 6100 6900
Wire Notes Line
	6100 6900 6100 3400
Text Notes 6150 3300 0    50   ~ 0
TIMER CIRCUIT
$Comp
L Connector:Jack-DC J7
U 1 1 62676CB3
P 7900 1550
F 0 "J7" H 7957 1875 50  0000 C CNN
F 1 "Jack-DC input" H 7957 1784 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-063AH_Horizontal" H 7950 1510 50  0001 C CNN
F 3 "~" H 7950 1510 50  0001 C CNN
	1    7900 1550
	1    0    0    -1  
$EndComp
Text GLabel 8200 1650 2    50   Input ~ 0
GND
Text GLabel 8200 1450 2    50   Input ~ 0
V+_12V
$Comp
L Connector:Jack-DC J9
U 1 1 62679176
P 11800 2250
F 0 "J9" H 11857 2575 50  0000 C CNN
F 1 "Jack-DC output FOR DAISY CHAIN" H 11857 2484 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-063AH_Horizontal" H 11850 2210 50  0001 C CNN
F 3 "~" H 11850 2210 50  0001 C CNN
	1    11800 2250
	1    0    0    -1  
$EndComp
Text GLabel 12100 2350 2    50   Input ~ 0
GND
Text GLabel 12100 2150 2    50   Input ~ 0
V+_12V
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 6267A54B
P 10650 5350
F 0 "J8" H 10730 5342 50  0000 L CNN
F 1 "Conn_01x02" H 10730 5251 50  0000 L CNN
F 2 "Connector_Coaxial:BNC_Amphenol_B6252HB-NPP3G-50_Horizontal" H 10650 5350 50  0001 C CNN
F 3 "~" H 10650 5350 50  0001 C CNN
	1    10650 5350
	1    0    0    -1  
$EndComp
Text GLabel 10450 5450 0    50   Input ~ 0
OUT1
Text GLabel 10450 5350 0    50   Input ~ 0
OUT2
$Comp
L Connector_Generic:Conn_01x06 J10
U 1 1 6267E30A
P 8500 7850
F 0 "J10" V 8464 7462 50  0000 R CNN
F 1 "Optical density connector" V 8373 7462 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8500 7850 50  0001 C CNN
F 3 "~" H 8500 7850 50  0001 C CNN
	1    8500 7850
	0    -1   -1   0   
$EndComp
Text GLabel 8300 8050 3    50   Input ~ 0
REGULATED_5V+
Text GLabel 8400 8050 3    50   Input ~ 0
GND
Wire Wire Line
	8500 8050 8500 8400
$Comp
L Device:R R6
U 1 1 6268070A
P 8500 8550
F 0 "R6" H 8570 8596 50  0000 L CNN
F 1 "1M ohm" H 8570 8505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8430 8550 50  0001 C CNN
F 3 "~" H 8500 8550 50  0001 C CNN
	1    8500 8550
	1    0    0    -1  
$EndComp
Text GLabel 1250 4550 0    50   Input ~ 0
A0
Text GLabel 8500 8950 3    50   Input ~ 0
A0
Wire Wire Line
	8500 8700 8500 8800
Wire Wire Line
	8500 8800 8900 8800
Wire Wire Line
	8900 8800 8900 8350
Wire Wire Line
	8900 8350 8600 8350
Wire Wire Line
	8600 8350 8600 8050
Connection ~ 8500 8800
Wire Wire Line
	8500 8800 8500 8950
Wire Notes Line
	6100 7150 11900 7150
Wire Notes Line
	11900 7150 11900 9700
Wire Notes Line
	11900 9700 6100 9700
Wire Notes Line
	6100 9700 6100 7150
Text Notes 6150 7350 0    50   ~ 0
OPTICAL DENSITY SENSOR
Wire Notes Line
	11200 2600 15700 2600
Wire Notes Line
	15700 2600 15700 700 
Wire Notes Line
	15700 700  11200 700 
Wire Notes Line
	11200 700  11200 2600
Text Notes 11350 850  0    50   ~ 0
OUPTUT
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 6269A9B7
P 10700 5950
F 0 "Q1" V 11028 5950 50  0000 C CNN
F 1 "2N3904" V 10937 5950 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10900 5875 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 10700 5950 50  0001 L CNN
	1    10700 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10700 6150 10700 6300
$Comp
L Device:R R7
U 1 1 626A1797
P 10700 6450
F 0 "R7" H 10770 6496 50  0000 L CNN
F 1 "1.0K" H 10770 6405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 10630 6450 50  0001 C CNN
F 3 "~" H 10700 6450 50  0001 C CNN
	1    10700 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 6600 10700 6750
Wire Wire Line
	10700 6750 10550 6750
Text GLabel 10550 6750 0    50   Input ~ 0
Transistor_Control
Text GLabel 2000 4850 2    50   Input ~ 0
Transistor_Control
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J11
U 1 1 6269AC00
P 10100 5850
F 0 "J11" H 10150 6067 50  0000 C CNN
F 1 "Conn_02x02_Top_Bottom" H 10150 5976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 10100 5850 50  0001 C CNN
F 3 "~" H 10100 5850 50  0001 C CNN
	1    10100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 5850 10500 5850
Wire Wire Line
	9600 5850 9600 5950
Wire Wire Line
	9600 5950 9900 5950
Wire Wire Line
	8800 5850 9600 5850
Connection ~ 9600 5850
Wire Wire Line
	9600 5850 9900 5850
Text GLabel 10400 5950 3    50   Input ~ 0
OUT1
Text GLabel 2000 4950 2    50   Input ~ 0
LED1
Text GLabel 2000 5250 2    50   Input ~ 0
LED2
Text GLabel 2000 5350 2    50   Input ~ 0
LED3
Text GLabel 2000 5550 2    50   Input ~ 0
LED4
Text GLabel 1250 4850 0    50   Input ~ 0
LED5
Text GLabel 1250 4950 0    50   Input ~ 0
LED6
$Comp
L Connector_Generic:Conn_02x04_Counter_Clockwise J12
U 1 1 626B5FFC
P 14600 2150
F 0 "J12" H 14650 2467 50  0000 C CNN
F 1 "Conn_02x04_Counter_Clockwise" H 14650 2376 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x04_P2.54mm_Horizontal" H 14600 2150 50  0001 C CNN
F 3 "~" H 14600 2150 50  0001 C CNN
	1    14600 2150
	1    0    0    -1  
$EndComp
Text GLabel 14400 2050 0    50   Input ~ 0
LED1
Text GLabel 14400 2150 0    50   Input ~ 0
LED2
Text GLabel 14400 2250 0    50   Input ~ 0
LED3
Text GLabel 14400 2350 0    50   Input ~ 0
LED4
Text GLabel 14900 2350 2    50   Input ~ 0
LED5
Text GLabel 14900 2250 2    50   Input ~ 0
LED6
Text GLabel 14900 2150 2    50   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_01x01 J13
U 1 1 626B2C5C
P 11000 4550
F 0 "J13" V 10872 4630 50  0000 L CNN
F 1 "Solder lead 2" V 10963 4630 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 11000 4550 50  0001 C CNN
F 3 "~" H 11000 4550 50  0001 C CNN
	1    11000 4550
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J14
U 1 1 626B34AE
P 11000 5000
F 0 "J14" V 10872 5080 50  0000 L CNN
F 1 "Solder lead 1" V 10963 5080 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 11000 5000 50  0001 C CNN
F 3 "~" H 11000 5000 50  0001 C CNN
	1    11000 5000
	0    -1   -1   0   
$EndComp
Text GLabel 11000 5200 2    50   Input ~ 0
OUT2
Text GLabel 11000 4750 2    50   Input ~ 0
OUT1
Text GLabel 4150 2100 1    50   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 62656342
P 4150 2300
F 0 "J3" V 4022 2380 50  0000 L CNN
F 1 "Test pad GND" V 4113 2380 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 4150 2300 50  0001 C CNN
F 3 "~" H 4150 2300 50  0001 C CNN
	1    4150 2300
	0    1    1    0   
$EndComp
$Comp
L Timer:NE555P U3
U 1 1 62641A0C
P 8300 5050
F 0 "U3" H 8450 5650 50  0000 C CNN
F 1 "NE555P" H 8500 5500 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8950 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 9150 4650 50  0001 C CNN
	1    8300 5050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
