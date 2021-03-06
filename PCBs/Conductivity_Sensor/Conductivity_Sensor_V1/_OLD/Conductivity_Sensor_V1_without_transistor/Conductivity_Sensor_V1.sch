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
$Comp
L Interface_Expansion:MCP23017_SP U1
U 1 1 62642645
P 4450 5150
F 0 "U1" H 4300 6350 50  0000 C CNN
F 1 "MCP23017_SP" H 4100 6250 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 4650 4150 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 4650 4050 50  0001 L CNN
	1    4450 5150
	1    0    0    -1  
$EndComp
$Comp
L ESP8266:Custom_LOLIN_V3 U2
U 1 1 62643FD1
P 1650 5200
F 0 "U2" H 1625 6115 50  0000 C CNN
F 1 "Custom_LOLIN_V3" H 1625 6024 50  0000 C CNN
F 2 "" H 900 5850 50  0001 C CNN
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
F 2 "" H 1700 1600 50  0001 C CNN
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
F 2 "" H 3050 1600 50  0001 C CNN
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
F 2 "" V 2230 1950 50  0001 C CNN
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
F 2 "" V 2680 1650 50  0001 C CNN
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
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 62653DD9
P 6300 1700
F 0 "J1" H 6350 2017 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 6350 1926 50  0000 C CNN
F 2 "" H 6300 1700 50  0001 C CNN
F 3 "~" H 6300 1700 50  0001 C CNN
	1    6300 1700
	1    0    0    -1  
$EndComp
Text GLabel 6600 1600 2    50   Input ~ 0
GND
Text GLabel 6100 1600 0    50   Input ~ 0
V+_12V
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 6265527E
P 3500 2300
F 0 "J2" V 3372 2380 50  0000 L CNN
F 1 "Test pad 5v+" V 3463 2380 50  0000 L CNN
F 2 "" H 3500 2300 50  0001 C CNN
F 3 "~" H 3500 2300 50  0001 C CNN
	1    3500 2300
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 62656342
P 4150 2300
F 0 "J3" V 4022 2380 50  0000 L CNN
F 1 "Test pad GND" V 4113 2380 50  0000 L CNN
F 2 "" H 4150 2300 50  0001 C CNN
F 3 "~" H 4150 2300 50  0001 C CNN
	1    4150 2300
	0    1    1    0   
$EndComp
Text GLabel 3500 2100 1    50   Input ~ 0
REGULATED_5V+
Text GLabel 4150 2100 1    50   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 62657918
P 5550 2400
F 0 "J4" V 5422 2480 50  0000 L CNN
F 1 "Test pad 12v+" V 5513 2480 50  0000 L CNN
F 2 "" H 5550 2400 50  0001 C CNN
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
F 2 "" H 6450 2400 50  0001 C CNN
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
P 13050 4050
F 0 "J6" H 13130 4042 50  0000 L CNN
F 1 "Screen connector" H 13130 3951 50  0000 L CNN
F 2 "" H 13050 4050 50  0001 C CNN
F 3 "~" H 13050 4050 50  0001 C CNN
	1    13050 4050
	0    -1   -1   0   
$EndComp
Text GLabel 12950 4250 3    50   Input ~ 0
GND
Text GLabel 13050 4250 3    50   Input ~ 0
REGULATED_5V+
Text GLabel 13150 4250 3    50   Input ~ 0
SCL
Text GLabel 13250 4250 3    50   Input ~ 0
SDA
Text GLabel 2000 4650 2    50   Input ~ 0
SCL
Text GLabel 2000 4750 2    50   Input ~ 0
SDA
Text GLabel 1250 5950 0    50   Input ~ 0
REGULATED_5V+
Text GLabel 1250 5850 0    50   Input ~ 0
GND
Text GLabel 3750 5950 0    50   Input ~ 0
REGULATED_5V+
Text GLabel 3750 5850 0    50   Input ~ 0
REGULATED_5V+
Text GLabel 3750 5750 0    50   Input ~ 0
GND
Text GLabel 3750 5250 0    50   Input ~ 0
REGULATED_5V+
Wire Wire Line
	3750 4450 3700 4450
Wire Wire Line
	3750 4350 3700 4350
$Comp
L Device:R R4
U 1 1 62661B0A
P 3400 4450
F 0 "R4" V 3607 4450 50  0000 C CNN
F 1 "10K" V 3516 4450 50  0000 C CNN
F 2 "" V 3330 4450 50  0001 C CNN
F 3 "~" H 3400 4450 50  0001 C CNN
	1    3400 4450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 62661FCA
P 3400 4350
F 0 "R3" V 3193 4350 50  0000 C CNN
F 1 "10K" V 3284 4350 50  0000 C CNN
F 2 "" V 3330 4350 50  0001 C CNN
F 3 "~" H 3400 4350 50  0001 C CNN
	1    3400 4350
	0    1    1    0   
$EndComp
Text GLabel 3250 4450 0    50   Input ~ 0
REGULATED_5V+
Text GLabel 3250 4350 0    50   Input ~ 0
REGULATED_5V+
Text GLabel 4450 4050 1    50   Input ~ 0
REGULATED_5V+
Text GLabel 4450 6250 3    50   Input ~ 0
GND
Text GLabel 3700 4200 1    50   Input ~ 0
SDA
Text GLabel 3700 4600 3    50   Input ~ 0
SCL
Wire Wire Line
	3700 4200 3700 4350
Connection ~ 3700 4350
Wire Wire Line
	3700 4350 3550 4350
Wire Wire Line
	3700 4600 3700 4450
Connection ~ 3700 4450
Wire Wire Line
	3700 4450 3550 4450
$Comp
L Device:C C3
U 1 1 62664AC2
P 7200 5650
F 0 "C3" H 7315 5696 50  0000 L CNN
F 1 "C" H 7315 5605 50  0000 L CNN
F 2 "" H 7238 5500 50  0001 C CNN
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
F 2 "" H 7838 5450 50  0001 C CNN
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
Wire Wire Line
	8800 5850 9750 5850
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
Text GLabel 9750 5850 2    50   Input ~ 0
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
F 2 "" V 9530 4650 50  0001 C CNN
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
F 2 "" H 7950 1510 50  0001 C CNN
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
F 2 "" H 11850 2210 50  0001 C CNN
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
L Connector_Generic:Conn_01x06 J?
U 1 1 6267E30A
P 8500 7850
F 0 "J?" V 8464 7462 50  0000 R CNN
F 1 "Optical density connector" V 8373 7462 50  0000 R CNN
F 2 "" H 8500 7850 50  0001 C CNN
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
L Device:R R?
U 1 1 6268070A
P 8500 8550
F 0 "R?" H 8570 8596 50  0000 L CNN
F 1 "1M ohm" H 8570 8505 50  0000 L CNN
F 2 "" V 8430 8550 50  0001 C CNN
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
$EndSCHEMATC
