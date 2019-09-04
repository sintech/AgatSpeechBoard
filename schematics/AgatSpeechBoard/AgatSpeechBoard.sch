EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 2
Title "Agat Speech Board"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2250 5150 900  1350
U 5C82B8F2
F0 "Analog board" 50
F1 "Analog_board.sch" 50
F2 "CTL_2+8" I L 2250 5550 50 
F3 "ADDR_8" I L 2250 5350 50 
F4 "CTL_4" I L 2250 5650 50 
F5 "PDC" I L 2250 5850 50 
F6 "CTL_1" I L 2250 5750 50 
F7 "AUDIO_OUT" I L 2250 6000 50 
F8 "I\\O_M0" O L 2250 5250 50 
F9 "GND" I L 2250 6400 50 
F10 "+5V" I L 2250 6300 50 
F11 "-12V" I L 2250 6200 50 
$EndSheet
$Comp
L 74xx:74LS245 U4
U 1 1 5C83E436
P 4300 1400
F 0 "U4" H 4000 2050 50  0000 C CNN
F 1 "74LS245" H 4000 750 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4300 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 4300 1400 50  0001 C CNN
F 4 "К555АП6" H 4000 650 50  0000 C CNN "Rus"
	1    4300 1400
	1    0    0    -1  
$EndComp
$Comp
L Logic_Programmable:GAL16V8 U6
U 1 1 5C83E499
P 4350 6100
F 0 "U6" H 4000 6750 50  0000 L CNN
F 1 "ATF16V8" H 3900 5500 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4350 6100 50  0001 C CNN
F 3 "" H 4350 6100 50  0001 C CNN
	1    4350 6100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS193 U7
U 1 1 5C83E509
P 6650 1600
F 0 "U7" H 6350 2150 50  0000 C CNN
F 1 "74LS193" H 6350 950 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6650 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS193" H 6650 1600 50  0001 C CNN
F 4 "К555ИЕ7" H 6200 850 50  0000 L CNN "Rus"
	1    6650 1600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS193 U8
U 1 1 5C83E550
P 6650 3200
F 0 "U8" H 6350 3750 50  0000 C CNN
F 1 "74LS193" H 6350 2550 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6650 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS193" H 6650 3200 50  0001 C CNN
F 4 "К555ИЕ7" H 6350 2450 50  0000 C CNN "Rus"
	1    6650 3200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS193 U9
U 1 1 5C83E580
P 6650 4850
F 0 "U9" H 6350 5400 50  0000 C CNN
F 1 "74LS193" H 6350 4200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6650 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS193" H 6650 4850 50  0001 C CNN
F 4 "К555ИЕ7" H 850 -50 50  0001 C CNN "Rus"
	1    6650 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS175 U5
U 1 1 5C83E5ED
P 4300 3350
F 0 "U5" H 4000 3900 50  0000 C CNN
F 1 "74LS175" H 4000 2700 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4300 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS175" H 4300 3350 50  0001 C CNN
F 4 "К555ТМ8" H 4000 2600 50  0000 C CNN "Rus"
	1    4300 3350
	1    0    0    -1  
$EndComp
$Comp
L Sintechs-lib:CY62256 U10
U 1 1 5C83F3A9
P 9300 2100
F 0 "U10" H 9000 3150 50  0000 C CNN
F 1 "CY62256" H 9400 1050 50  0000 L CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 9300 2100 50  0001 C CNN
F 3 "https://www.cypress.com/file/43841/download" H 9300 2100 50  0001 C CNN
	1    9300 2100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS251 U11
U 1 1 5C83F459
P 10800 2000
F 0 "U11" H 10500 2750 50  0000 C CNN
F 1 "74LS251" H 10500 1150 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 10800 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS251" H 10800 2000 50  0001 C CNN
F 4 "К555КП15" H 10500 1050 50  0000 C CNN "Rus"
	1    10800 2000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS193 U12
U 1 1 5C83F4AA
P 10800 4500
F 0 "U12" H 10500 5050 50  0000 C CNN
F 1 "74LS193" H 10500 3850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 10800 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS193" H 10800 4500 50  0001 C CNN
F 4 "К555ИЕ7" H 850 400 50  0001 C CNN "Rus"
	1    10800 4500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U1
U 1 1 5C83F511
P 9250 4100
F 0 "U1" H 9050 4350 50  0000 C CNN
F 1 "74LS74" H 9000 3850 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9250 4100 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 9250 4100 50  0001 C CNN
F 4 "К555ТМ2" H 9050 3750 50  0000 C CNN "Rus"
	1    9250 4100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U3
U 1 1 5C83F9C0
P 4300 4650
F 0 "U3" H 4300 4700 50  0000 C CNN
F 1 "74LS125" H 4300 4600 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4300 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 4300 4650 50  0001 C CNN
F 4 "К555ЛП8" H 900 0   50  0001 C CNN "Rus"
	1    4300 4650
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 1 1 5C83FA5D
P 10800 5600
F 0 "U2" H 10800 5650 50  0000 C CNN
F 1 "74LS04" H 10800 5550 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10800 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 10800 5600 50  0001 C CNN
F 4 "К555ЛН1" H 850 350 50  0001 C CNN "Rus"
	1    10800 5600
	-1   0    0    -1  
$EndComp
Entry Wire Line
	4950 900  5050 1000
Entry Wire Line
	4950 1000 5050 1100
Entry Wire Line
	4950 1100 5050 1200
Entry Wire Line
	4950 1200 5050 1300
Entry Wire Line
	4950 1300 5050 1400
Entry Wire Line
	4950 1400 5050 1500
Entry Wire Line
	4950 1500 5050 1600
Entry Wire Line
	4950 1600 5050 1700
Text Label 4850 900  0    50   ~ 0
D0
Text Label 4850 1000 0    50   ~ 0
D1
Text Label 4850 1100 0    50   ~ 0
D2
Text Label 4850 1200 0    50   ~ 0
D3
Text Label 4850 1300 0    50   ~ 0
D4
Text Label 4850 1400 0    50   ~ 0
D5
Text Label 4850 1500 0    50   ~ 0
D6
Text Label 4850 1600 0    50   ~ 0
D7
Text Label 5450 650  0    50   ~ 0
ADDR\DATA_BUS
Entry Wire Line
	5800 1100 5900 1200
Entry Wire Line
	5800 1200 5900 1300
Entry Wire Line
	5800 1300 5900 1400
Entry Wire Line
	5800 1400 5900 1500
Entry Wire Line
	5800 2800 5900 2900
Entry Wire Line
	5800 2900 5900 3000
Entry Wire Line
	5800 3000 5900 3100
Entry Wire Line
	5800 4350 5900 4450
Entry Wire Line
	5800 4450 5900 4550
Entry Wire Line
	5800 4550 5900 4650
Entry Wire Line
	5800 4650 5900 4750
Text Label 6050 1200 0    50   ~ 0
D0
Text Label 6050 1300 0    50   ~ 0
D1
Text Label 6050 1400 0    50   ~ 0
D2
Text Label 6050 1500 0    50   ~ 0
D3
NoConn ~ 7150 1900
NoConn ~ 7150 3500
NoConn ~ 7150 5150
Text Label 6050 2800 0    50   ~ 0
D4
Text Label 6050 2900 0    50   ~ 0
D5
Text Label 6050 3000 0    50   ~ 0
D6
Text Label 6050 3100 0    50   ~ 0
D7
Text Label 6050 4450 0    50   ~ 0
D0
Text Label 6050 4550 0    50   ~ 0
D1
Text Label 6050 4650 0    50   ~ 0
D2
Text Label 6050 4750 0    50   ~ 0
D3
NoConn ~ 7150 4950
$Comp
L power:GND #PWR015
U 1 1 5C860229
P 8600 2500
F 0 "#PWR015" H 8600 2250 50  0001 C CNN
F 1 "GND" H 8600 2350 50  0000 C CNN
F 2 "" H 8600 2500 50  0001 C CNN
F 3 "" H 8600 2500 50  0001 C CNN
	1    8600 2500
	1    0    0    -1  
$EndComp
Entry Wire Line
	10000 1300 10100 1400
Entry Wire Line
	10000 1400 10100 1500
Entry Wire Line
	10000 1500 10100 1600
Entry Wire Line
	10000 1600 10100 1700
Entry Wire Line
	10000 1700 10100 1800
Entry Wire Line
	10000 1800 10100 1900
Entry Wire Line
	10000 1900 10100 2000
Entry Wire Line
	10000 2000 10100 2100
Entry Wire Line
	9900 1200 10000 1300
Entry Wire Line
	9900 1300 10000 1400
Entry Wire Line
	9900 1400 10000 1500
Entry Wire Line
	9900 1500 10000 1600
Entry Wire Line
	9900 1600 10000 1700
Entry Wire Line
	9900 1700 10000 1800
Entry Wire Line
	9900 1800 10000 1900
Entry Wire Line
	9900 1900 10000 2000
Text Label 10200 1400 0    50   ~ 0
D0
Text Label 9750 1200 0    50   ~ 0
D0
Text Label 9750 1300 0    50   ~ 0
D1
Text Label 9750 1400 0    50   ~ 0
D2
Text Label 9750 1500 0    50   ~ 0
D3
Text Label 9750 1600 0    50   ~ 0
D4
Text Label 9750 1700 0    50   ~ 0
D5
Text Label 9750 1800 0    50   ~ 0
D6
Text Label 9750 1900 0    50   ~ 0
D7
Text Label 10200 1500 0    50   ~ 0
D1
Text Label 10200 1600 0    50   ~ 0
D2
Text Label 10200 1700 0    50   ~ 0
D3
Text Label 10200 1800 0    50   ~ 0
D4
Text Label 10200 1900 0    50   ~ 0
D5
Text Label 10200 2000 0    50   ~ 0
D6
Text Label 10200 2100 0    50   ~ 0
D7
NoConn ~ 11300 4600
NoConn ~ 11300 4800
$Comp
L 74xx:74LS04 U2
U 2 1 5C8EB552
P 11850 4000
F 0 "U2" H 11850 4050 50  0000 C CNN
F 1 "74LS04" H 11850 3950 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 11850 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 11850 4000 50  0001 C CNN
F 4 "К555ЛН1" H 850 400 50  0001 C CNN "Rus"
	2    11850 4000
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS04 U2
U 3 1 5C91DC54
P 9350 5450
F 0 "U2" H 9350 5500 50  0000 C CNN
F 1 "74LS04" H 9350 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9350 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9350 5450 50  0001 C CNN
F 4 "К555ЛН1" H 550 600 50  0001 C CNN "Rus"
	3    9350 5450
	1    0    0    -1  
$EndComp
Text Label 4900 6300 0    50   ~ 0
LOAD_L
Text Label 4900 6200 0    50   ~ 0
LOAD_H
Entry Wire Line
	5800 2700 5900 2800
Wire Wire Line
	4800 900  4950 900 
Wire Wire Line
	4800 1000 4950 1000
Wire Wire Line
	4800 1100 4950 1100
Wire Wire Line
	4800 1200 4950 1200
Wire Wire Line
	4800 1300 4950 1300
Wire Wire Line
	4950 1400 4800 1400
Wire Wire Line
	4800 1500 4950 1500
Wire Wire Line
	4950 1600 4800 1600
Wire Wire Line
	5900 1200 6150 1200
Wire Wire Line
	5900 1300 6150 1300
Wire Wire Line
	5900 1400 6150 1400
Wire Wire Line
	5900 1500 6150 1500
Wire Wire Line
	7150 1200 8900 1200
Wire Wire Line
	8900 1300 7150 1300
Wire Wire Line
	7150 1400 8900 1400
Wire Wire Line
	7150 1500 8900 1500
Wire Wire Line
	7150 2800 7550 2800
Wire Wire Line
	7550 2800 7550 1600
Wire Wire Line
	7550 1600 8900 1600
Wire Wire Line
	7150 2900 7650 2900
Wire Wire Line
	7650 2900 7650 1700
Wire Wire Line
	7650 1700 8900 1700
Wire Wire Line
	7150 3000 7750 3000
Wire Wire Line
	7750 3000 7750 1800
Wire Wire Line
	7750 1800 8900 1800
Wire Wire Line
	7150 3100 7850 3100
Wire Wire Line
	7850 3100 7850 1900
Wire Wire Line
	7850 1900 8900 1900
Wire Wire Line
	7150 4450 7950 4450
Wire Wire Line
	7950 4450 7950 2000
Wire Wire Line
	7950 2000 8900 2000
Wire Wire Line
	8050 4550 8050 2100
Wire Wire Line
	8050 2100 8900 2100
Wire Wire Line
	7150 4550 8050 4550
Wire Wire Line
	8150 4650 8150 2200
Wire Wire Line
	8150 2200 8900 2200
Wire Wire Line
	7150 4650 8150 4650
Wire Wire Line
	7150 4750 8250 4750
Wire Wire Line
	8250 4750 8250 2300
Wire Wire Line
	8250 2300 8900 2300
Wire Wire Line
	7150 1700 7300 1700
Wire Wire Line
	7300 1700 7300 2450
Wire Wire Line
	7300 2450 6000 2450
Wire Wire Line
	6000 3500 6150 3500
Wire Wire Line
	6000 2450 6000 3500
Wire Wire Line
	5900 2900 6150 2900
Wire Wire Line
	6150 3000 5900 3000
Wire Wire Line
	6150 3100 5900 3100
Wire Wire Line
	5900 4450 6150 4450
Wire Wire Line
	5900 4550 6150 4550
Wire Wire Line
	5900 4650 6150 4650
Wire Wire Line
	5900 4750 6150 4750
Wire Wire Line
	7150 3300 7300 3300
Wire Wire Line
	6000 5150 6150 5150
Wire Wire Line
	8900 2400 8800 2400
Wire Wire Line
	8900 2500 8800 2500
Wire Wire Line
	8800 2500 8800 2400
Connection ~ 8800 2400
Wire Wire Line
	8900 2600 8800 2600
Wire Wire Line
	8800 2600 8800 2500
Connection ~ 8800 2500
Wire Wire Line
	8900 2800 8800 2800
Wire Wire Line
	8800 2800 8800 2600
Connection ~ 8800 2600
Wire Wire Line
	8900 2900 8350 2900
Wire Wire Line
	9800 2700 9800 3350
Connection ~ 8450 3350
Wire Wire Line
	10100 1400 10300 1400
Wire Wire Line
	10300 1500 10100 1500
Wire Wire Line
	10100 1600 10300 1600
Wire Wire Line
	10300 1700 10100 1700
Wire Wire Line
	10100 1800 10300 1800
Wire Wire Line
	10300 1900 10100 1900
Wire Wire Line
	10100 2000 10300 2000
Wire Wire Line
	10300 2100 10100 2100
Wire Wire Line
	9900 1900 9700 1900
Wire Wire Line
	9700 1800 9900 1800
Wire Wire Line
	9900 1700 9700 1700
Wire Wire Line
	9900 1600 9700 1600
Wire Wire Line
	9900 1500 9700 1500
Wire Wire Line
	9900 1400 9700 1400
Wire Wire Line
	9700 1300 9900 1300
Wire Wire Line
	9900 1200 9700 1200
Wire Wire Line
	8450 3350 8450 3000
Wire Wire Line
	8900 3000 8450 3000
Wire Wire Line
	11300 4100 11350 4100
Wire Wire Line
	11450 4200 11300 4200
Wire Wire Line
	11550 4400 11550 5600
Wire Wire Line
	11550 5600 11100 5600
Wire Wire Line
	11300 4400 11550 4400
Wire Wire Line
	10500 5600 10200 5600
Wire Wire Line
	10200 5600 10200 4600
Wire Wire Line
	10200 4600 10300 4600
Wire Wire Line
	8600 2400 8600 2500
Wire Wire Line
	8600 2400 8800 2400
Wire Wire Line
	8800 2800 8800 3200
Connection ~ 8800 2800
Wire Wire Line
	10300 4100 10300 4200
Connection ~ 10300 4200
Wire Wire Line
	10300 4200 10300 4300
Connection ~ 10300 4300
Wire Wire Line
	10300 4300 10300 4400
Wire Wire Line
	4850 6300 5550 6300
Wire Wire Line
	5550 3300 6150 3300
Wire Wire Line
	6000 1900 6150 1900
Wire Wire Line
	6000 800  6000 1900
Wire Wire Line
	5550 3300 5550 1700
Wire Wire Line
	5550 1700 6150 1700
Connection ~ 5550 3300
Wire Wire Line
	10300 5000 9950 5000
Wire Wire Line
	7300 3300 7300 4100
Wire Wire Line
	7300 4100 6000 4100
Wire Wire Line
	6000 4100 6000 5150
Wire Wire Line
	3800 1900 3800 2300
Wire Wire Line
	3800 2300 5450 2300
Wire Wire Line
	3700 2400 3700 1800
Wire Wire Line
	3700 1800 3800 1800
Wire Wire Line
	5900 2800 6150 2800
Text Label 4900 5800 0    50   ~ 0
RAM_WE
Text Label 4900 5900 0    50   ~ 0
RAM_OE
Wire Wire Line
	11300 4300 11550 4300
Wire Wire Line
	11350 4100 11350 3300
Wire Wire Line
	11350 3300 10000 3300
Wire Wire Line
	10000 3300 10000 2300
Wire Wire Line
	10000 2300 10300 2300
Wire Wire Line
	10200 2500 10200 3100
Wire Wire Line
	10200 3100 11550 3100
Wire Wire Line
	11550 3100 11550 4300
Wire Wire Line
	10200 2500 10300 2500
Connection ~ 11550 4300
Wire Wire Line
	11550 4300 11850 4300
Wire Wire Line
	11850 3700 11850 800 
Wire Wire Line
	6000 800  11850 800 
Wire Wire Line
	10300 2400 10100 2400
Wire Wire Line
	10100 2400 10100 3200
Wire Wire Line
	10100 3200 11450 3200
Wire Wire Line
	11450 3200 11450 4200
Wire Wire Line
	9300 3200 8800 3200
Wire Wire Line
	5450 6100 4850 6100
$Comp
L power:+5V #PWR013
U 1 1 5CB3CFC8
P 6800 4300
F 0 "#PWR013" H 6800 4150 50  0001 C CNN
F 1 "+5V" H 6800 4440 50  0000 C CNN
F 2 "" H 6800 4300 50  0001 C CNN
F 3 "" H 6800 4300 50  0001 C CNN
	1    6800 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4150 6700 4150
Wire Wire Line
	6700 4150 6700 4300
Wire Wire Line
	6700 4300 6800 4300
$Comp
L power:+5V #PWR011
U 1 1 5CB43530
P 6800 2650
F 0 "#PWR011" H 6800 2500 50  0001 C CNN
F 1 "+5V" H 6800 2790 50  0000 C CNN
F 2 "" H 6800 2650 50  0001 C CNN
F 3 "" H 6800 2650 50  0001 C CNN
	1    6800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2500 6700 2500
Wire Wire Line
	6700 2500 6700 2650
Wire Wire Line
	6700 2650 6800 2650
$Comp
L power:+5V #PWR09
U 1 1 5CB49FDB
P 6800 1050
F 0 "#PWR09" H 6800 900 50  0001 C CNN
F 1 "+5V" H 6800 1190 50  0000 C CNN
F 2 "" H 6800 1050 50  0001 C CNN
F 3 "" H 6800 1050 50  0001 C CNN
	1    6800 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 900  6700 900 
Wire Wire Line
	6700 900  6700 1050
Wire Wire Line
	6700 1050 6800 1050
$Comp
L power:+5V #PWR017
U 1 1 5CB50EBF
P 9400 1000
F 0 "#PWR017" H 9400 850 50  0001 C CNN
F 1 "+5V" H 9400 1140 50  0000 C CNN
F 2 "" H 9400 1000 50  0001 C CNN
F 3 "" H 9400 1000 50  0001 C CNN
	1    9400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1000 9400 1000
$Comp
L power:GND #PWR010
U 1 1 5CB6654B
P 6800 2250
F 0 "#PWR010" H 6800 2000 50  0001 C CNN
F 1 "GND" H 6800 2100 50  0000 C CNN
F 2 "" H 6800 2250 50  0001 C CNN
F 3 "" H 6800 2250 50  0001 C CNN
	1    6800 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2400 6700 2400
Wire Wire Line
	6700 2400 6700 2250
Wire Wire Line
	6700 2250 6800 2250
$Comp
L power:GND #PWR012
U 1 1 5CB6DBD4
P 6800 3850
F 0 "#PWR012" H 6800 3600 50  0001 C CNN
F 1 "GND" H 6800 3700 50  0000 C CNN
F 2 "" H 6800 3850 50  0001 C CNN
F 3 "" H 6800 3850 50  0001 C CNN
	1    6800 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4000 6700 4000
Wire Wire Line
	6700 4000 6700 3850
Wire Wire Line
	6700 3850 6800 3850
$Comp
L power:GND #PWR014
U 1 1 5CB756EC
P 6800 5500
F 0 "#PWR014" H 6800 5250 50  0001 C CNN
F 1 "GND" H 6800 5350 50  0000 C CNN
F 2 "" H 6800 5500 50  0001 C CNN
F 3 "" H 6800 5500 50  0001 C CNN
	1    6800 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5650 6700 5650
Wire Wire Line
	6700 5650 6700 5500
Wire Wire Line
	6700 5500 6800 5500
Wire Wire Line
	3700 2400 5350 2400
Text GLabel 4900 2950 2    50   Output ~ 0
CTL_2_8
Wire Wire Line
	4900 2950 4800 2950
Text GLabel 4900 3150 2    50   Output ~ 0
CTL_4
Text GLabel 4900 3350 2    50   Output ~ 0
PDC
Wire Wire Line
	4900 3150 4800 3150
Wire Wire Line
	4900 3350 4800 3350
Text GLabel 4800 4650 2    50   Input ~ 0
CTL_1
Wire Wire Line
	4800 4650 4600 4650
Entry Wire Line
	3500 2850 3600 2950
Entry Wire Line
	3500 3050 3600 3150
Entry Wire Line
	3500 3250 3600 3350
Entry Wire Line
	3500 4550 3600 4650
Entry Wire Line
	3500 800  3600 900 
Entry Wire Line
	3500 900  3600 1000
Entry Wire Line
	3500 1000 3600 1100
Entry Wire Line
	3500 1500 3600 1600
Entry Wire Line
	3500 1400 3600 1500
Entry Wire Line
	3500 1300 3600 1400
Entry Wire Line
	3500 1200 3600 1300
Entry Wire Line
	3500 1100 3600 1200
Wire Wire Line
	3600 900  3800 900 
Wire Wire Line
	3600 1000 3800 1000
Wire Wire Line
	3600 1100 3800 1100
Wire Wire Line
	3600 1200 3800 1200
Wire Wire Line
	3600 1300 3800 1300
Wire Wire Line
	3600 1400 3800 1400
Wire Wire Line
	3600 1500 3800 1500
Wire Wire Line
	3600 1600 3800 1600
Wire Wire Line
	3600 2950 3800 2950
Wire Wire Line
	3600 3150 3800 3150
Wire Wire Line
	3600 3350 3800 3350
Wire Wire Line
	3600 4650 4000 4650
Wire Wire Line
	5450 2300 5450 6100
Wire Wire Line
	5350 2400 5350 6000
Wire Wire Line
	4850 6000 5350 6000
Wire Wire Line
	4850 6200 5650 6200
Wire Wire Line
	5650 6200 5650 4950
Wire Wire Line
	5650 4950 6150 4950
Wire Bus Line
	5800 650  10000 650 
Wire Bus Line
	5050 650  5800 650 
Connection ~ 5800 650 
Wire Wire Line
	4300 4900 5050 4900
Wire Wire Line
	5050 5600 4850 5600
$Comp
L power:GND #PWR08
U 1 1 5CCD40EE
P 4450 4000
F 0 "#PWR08" H 4450 3750 50  0001 C CNN
F 1 "GND" H 4450 3850 50  0000 C CNN
F 2 "" H 4450 4000 50  0001 C CNN
F 3 "" H 4450 4000 50  0001 C CNN
	1    4450 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4150 4350 4150
Wire Wire Line
	4350 4150 4350 4000
Wire Wire Line
	4350 4000 4450 4000
$Comp
L power:+5V #PWR07
U 1 1 5CCDF77D
P 4450 2800
F 0 "#PWR07" H 4450 2650 50  0001 C CNN
F 1 "+5V" H 4450 2940 50  0000 C CNN
F 2 "" H 4450 2800 50  0001 C CNN
F 3 "" H 4450 2800 50  0001 C CNN
	1    4450 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2650 4350 2650
Wire Wire Line
	4350 2650 4350 2800
Wire Wire Line
	4350 2800 4450 2800
$Comp
L power:GND #PWR06
U 1 1 5CCEB5A1
P 4450 2050
F 0 "#PWR06" H 4450 1800 50  0001 C CNN
F 1 "GND" H 4450 1900 50  0000 C CNN
F 2 "" H 4450 2050 50  0001 C CNN
F 3 "" H 4450 2050 50  0001 C CNN
	1    4450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2200 4350 2200
Wire Wire Line
	4350 2200 4350 2050
Wire Wire Line
	4350 2050 4450 2050
$Comp
L power:+5V #PWR05
U 1 1 5CCF7A2B
P 4450 750
F 0 "#PWR05" H 4450 600 50  0001 C CNN
F 1 "+5V" H 4450 890 50  0000 C CNN
F 2 "" H 4450 750 50  0001 C CNN
F 3 "" H 4450 750 50  0001 C CNN
	1    4450 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 600  4350 600 
Wire Wire Line
	4350 600  4350 750 
Wire Wire Line
	4350 750  4450 750 
NoConn ~ 4800 3050
NoConn ~ 4800 3250
NoConn ~ 4800 3450
NoConn ~ 4800 3550
NoConn ~ 4800 3650
Wire Wire Line
	3700 3750 3700 4250
Wire Wire Line
	3700 4250 5250 4250
Wire Wire Line
	5250 4250 5250 5700
Wire Wire Line
	5250 5700 4850 5700
Wire Wire Line
	8550 6300 5550 6300
Connection ~ 5550 6300
Wire Wire Line
	5550 6300 5550 3300
Wire Wire Line
	9050 5450 8550 5450
Wire Wire Line
	8550 5450 8550 6300
$Comp
L power:+5V #PWR018
U 1 1 5CD7BEAA
P 10850 1050
F 0 "#PWR018" H 10850 900 50  0001 C CNN
F 1 "+5V" H 10850 1190 50  0000 C CNN
F 2 "" H 10850 1050 50  0001 C CNN
F 3 "" H 10850 1050 50  0001 C CNN
	1    10850 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 1100 10800 1050
Wire Wire Line
	10800 1050 10850 1050
$Comp
L power:+5V #PWR020
U 1 1 5CD8A2D0
P 10950 3950
F 0 "#PWR020" H 10950 3800 50  0001 C CNN
F 1 "+5V" H 10950 4090 50  0000 C CNN
F 2 "" H 10950 3950 50  0001 C CNN
F 3 "" H 10950 3950 50  0001 C CNN
	1    10950 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 3800 10850 3800
Wire Wire Line
	10850 3800 10850 3950
Wire Wire Line
	10850 3950 10950 3950
$Comp
L power:GND #PWR019
U 1 1 5CD98A71
P 10950 2850
F 0 "#PWR019" H 10950 2600 50  0001 C CNN
F 1 "GND" H 10950 2700 50  0000 C CNN
F 2 "" H 10950 2850 50  0001 C CNN
F 3 "" H 10950 2850 50  0001 C CNN
	1    10950 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 3000 10850 3000
Wire Wire Line
	10850 3000 10850 2850
Wire Wire Line
	10850 2850 10950 2850
$Comp
L power:GND #PWR021
U 1 1 5CDA7679
P 10950 5150
F 0 "#PWR021" H 10950 4900 50  0001 C CNN
F 1 "GND" H 10950 5000 50  0000 C CNN
F 2 "" H 10950 5150 50  0001 C CNN
F 3 "" H 10950 5150 50  0001 C CNN
	1    10950 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 5300 10850 5300
Wire Wire Line
	10850 5300 10850 5150
Wire Wire Line
	10850 5150 10950 5150
Wire Wire Line
	8350 2900 8350 5800
Wire Wire Line
	8450 3350 8450 5900
$Comp
L 74xx:74LS04 U2
U 4 1 5CDE609D
P 9350 4800
F 0 "U2" H 9350 4850 50  0000 C CNN
F 1 "74LS04" H 9350 4750 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9350 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9350 4800 50  0001 C CNN
F 4 "К555ЛН1" H 550 400 50  0001 C CNN "Rus"
	4    9350 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4100 10300 3450
Wire Wire Line
	10300 3450 9300 3450
Wire Wire Line
	9300 3450 9300 3200
Connection ~ 10300 4100
Connection ~ 9300 3200
Wire Wire Line
	11300 1400 11700 1400
Wire Wire Line
	11700 1400 11700 3550
Text GLabel 9800 4000 2    50   Output ~ 0
ADDR_8
Wire Wire Line
	9050 4800 8950 4800
Text GLabel 8950 4800 0    50   Input ~ 0
I\O_M0
$Comp
L power:+5V #PWR016
U 1 1 5CF4D0E9
P 9100 3800
F 0 "#PWR016" H 9100 3650 50  0001 C CNN
F 1 "+5V" H 9100 3940 50  0000 C CNN
F 2 "" H 9100 3800 50  0001 C CNN
F 3 "" H 9100 3800 50  0001 C CNN
	1    9100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3800 9250 3800
Wire Wire Line
	9250 3800 9650 3800
Wire Wire Line
	9650 3800 9650 4400
Wire Wire Line
	9650 4400 9250 4400
Connection ~ 9250 3800
NoConn ~ 9550 4200
Entry Wire Line
	3500 5600 3600 5700
Entry Wire Line
	3500 5900 3600 6000
Entry Wire Line
	3500 6000 3600 6100
Entry Wire Line
	3500 6100 3600 6200
Entry Wire Line
	3500 5700 3600 5800
Entry Wire Line
	3500 5800 3600 5900
Entry Wire Line
	3500 6200 3600 6300
Wire Wire Line
	3600 5700 3850 5700
Wire Wire Line
	3600 5900 3850 5900
Wire Wire Line
	3600 5800 3850 5800
Wire Wire Line
	3600 6000 3850 6000
Wire Wire Line
	3850 6100 3600 6100
Wire Wire Line
	3600 6200 3850 6200
Wire Wire Line
	3850 6300 3600 6300
Text Label 3750 6000 0    50   ~ 0
A0
Text Label 3750 6100 0    50   ~ 0
A1
Text Label 3750 6200 0    50   ~ 0
A2
Text Label 3650 6300 0    50   ~ 0
2MHZ
Text Label 3750 5700 0    50   ~ 0
~DS
Text Label 3700 5800 0    50   ~ 0
R\~W
Text Label 3600 5900 0    50   ~ 0
RESET
Text Label 3650 4650 0    50   ~ 0
B_D7
Text Label 3650 2950 0    50   ~ 0
B_D0
Text Label 3650 3150 0    50   ~ 0
B_D1
Text Label 3650 3350 0    50   ~ 0
B_D2
Text Label 3650 900  0    50   ~ 0
B_D0
Text Label 3650 1000 0    50   ~ 0
B_D1
Text Label 3650 1100 0    50   ~ 0
B_D2
Text Label 3650 1200 0    50   ~ 0
B_D3
Text Label 3650 1300 0    50   ~ 0
B_D4
Text Label 3650 1400 0    50   ~ 0
B_D5
Text Label 3650 1500 0    50   ~ 0
B_D6
Text Label 3650 1600 0    50   ~ 0
B_D7
$Comp
L 74xx:74LS04 U2
U 7 1 5D0ECC4A
P 9550 6450
F 0 "U2" H 9550 6500 50  0000 C CNN
F 1 "74LS04" H 9550 6400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9550 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9550 6450 50  0001 C CNN
F 4 "К555ЛН1" H 8200 1300 50  0001 C CNN "Rus"
	7    9550 6450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U3
U 5 1 5D0ECD0E
P 10050 6450
F 0 "U3" H 10050 6500 50  0000 C CNN
F 1 "74LS125" H 10050 6400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10050 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 10050 6450 50  0001 C CNN
F 4 "К555ЛП8" H 8200 1300 50  0001 C CNN "Rus"
	5    10050 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5D0ECD7B
P 4350 5400
F 0 "#PWR03" H 4350 5250 50  0001 C CNN
F 1 "+5V" H 4350 5540 50  0000 C CNN
F 2 "" H 4350 5400 50  0001 C CNN
F 3 "" H 4350 5400 50  0001 C CNN
	1    4350 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D0ECE84
P 4350 6800
F 0 "#PWR04" H 4350 6550 50  0001 C CNN
F 1 "GND" H 4350 6650 50  0000 C CNN
F 2 "" H 4350 6800 50  0001 C CNN
F 3 "" H 4350 6800 50  0001 C CNN
	1    4350 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D0ECEB3
P 9700 6950
F 0 "#PWR02" H 9700 6700 50  0001 C CNN
F 1 "GND" H 9700 6800 50  0000 C CNN
F 2 "" H 9700 6950 50  0001 C CNN
F 3 "" H 9700 6950 50  0001 C CNN
	1    9700 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 6950 9700 6950
$Comp
L power:+5V #PWR01
U 1 1 5D114A7C
P 9700 5950
F 0 "#PWR01" H 9700 5800 50  0001 C CNN
F 1 "+5V" H 9700 6090 50  0000 C CNN
F 2 "" H 9700 5950 50  0001 C CNN
F 3 "" H 9700 5950 50  0001 C CNN
	1    9700 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 5950 10050 5950
Wire Wire Line
	9550 5950 9700 5950
Connection ~ 9700 6950
Wire Wire Line
	9700 6950 10050 6950
Connection ~ 9700 5950
$Comp
L 74xx:74LS74 U1
U 3 1 5D1A4771
P 9050 6450
F 0 "U1" H 9050 6500 50  0000 C CNN
F 1 "74LS74" H 9050 6400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9050 6450 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 9050 6450 50  0001 C CNN
F 4 "К555ТМ2" H 8200 1300 50  0001 C CNN "Rus"
	3    9050 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 6050 9050 5950
Wire Wire Line
	9050 5950 9550 5950
Connection ~ 9550 5950
Wire Wire Line
	9050 6850 9050 6950
Wire Wire Line
	9050 6950 9550 6950
Connection ~ 9550 6950
Text Label 3500 2100 1    50   ~ 0
AGAT_BUS
NoConn ~ 11300 1500
Wire Wire Line
	10300 4900 10000 4900
Wire Wire Line
	10000 4900 10000 4400
Wire Wire Line
	10000 4400 9650 4400
Connection ~ 9650 4400
Wire Wire Line
	6650 4000 6150 4000
Wire Wire Line
	6150 4000 6150 3700
Connection ~ 6650 4000
Wire Wire Line
	6650 2400 6150 2400
Wire Wire Line
	6150 2400 6150 2100
Connection ~ 6650 2400
Wire Wire Line
	6650 5650 6150 5650
Wire Wire Line
	6150 5650 6150 5350
Connection ~ 6650 5650
$Comp
L power:+5V #PWR0103
U 1 1 5D456B23
P 5900 2000
F 0 "#PWR0103" H 5900 1850 50  0001 C CNN
F 1 "+5V" H 5900 2140 50  0000 C CNN
F 2 "" H 5900 2000 50  0001 C CNN
F 3 "" H 5900 2000 50  0001 C CNN
	1    5900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2000 6150 2000
$Comp
L power:+5V #PWR0104
U 1 1 5D486983
P 5900 3600
F 0 "#PWR0104" H 5900 3450 50  0001 C CNN
F 1 "+5V" H 5900 3740 50  0000 C CNN
F 2 "" H 5900 3600 50  0001 C CNN
F 3 "" H 5900 3600 50  0001 C CNN
	1    5900 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5D486A4C
P 5900 5250
F 0 "#PWR0105" H 5900 5100 50  0001 C CNN
F 1 "+5V" H 5900 5390 50  0000 C CNN
F 2 "" H 5900 5250 50  0001 C CNN
F 3 "" H 5900 5250 50  0001 C CNN
	1    5900 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3600 6150 3600
Wire Wire Line
	5900 5250 6150 5250
Text GLabel 2100 5350 0    50   Output ~ 0
ADDR_8
Wire Wire Line
	2100 5350 2250 5350
NoConn ~ 3800 3550
Wire Wire Line
	3600 3850 3800 3850
Text Label 3600 3850 0    50   ~ 0
RESET
Text GLabel 2100 5250 0    50   Input ~ 0
I\O_M0
Text GLabel 2100 5550 0    50   Output ~ 0
CTL_2_8
Text GLabel 2100 5650 0    50   Output ~ 0
CTL_4
Text GLabel 2100 5850 0    50   Output ~ 0
PDC
$Comp
L power:-12V #PWR0110
U 1 1 5DD3CCA3
P 2050 6200
F 0 "#PWR0110" H 2050 6300 50  0001 C CNN
F 1 "-12V" H 2050 6350 50  0000 C CNN
F 2 "" H 2050 6200 50  0001 C CNN
F 3 "" H 2050 6200 50  0001 C CNN
	1    2050 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5DD3CCD4
P 1900 6300
F 0 "#PWR0111" H 1900 6150 50  0001 C CNN
F 1 "+5V" H 1900 6440 50  0000 C CNN
F 2 "" H 1900 6300 50  0001 C CNN
F 3 "" H 1900 6300 50  0001 C CNN
	1    1900 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5DD3CD05
P 2050 6400
F 0 "#PWR0112" H 2050 6150 50  0001 C CNN
F 1 "GND" H 2050 6250 50  0000 C CNN
F 2 "" H 2050 6400 50  0001 C CNN
F 3 "" H 2050 6400 50  0001 C CNN
	1    2050 6400
	1    0    0    -1  
$EndComp
Text GLabel 2100 5750 0    50   Input ~ 0
CTL_1
Wire Wire Line
	2250 5250 2100 5250
Wire Wire Line
	2250 5550 2100 5550
Wire Wire Line
	2250 5650 2100 5650
Wire Wire Line
	2250 5750 2100 5750
Wire Wire Line
	2100 5850 2250 5850
Wire Wire Line
	2250 6200 2050 6200
Wire Wire Line
	2200 6300 1900 6300
Wire Wire Line
	2050 6400 2250 6400
Text Label 3750 5600 0    50   ~ 0
F0
Wire Wire Line
	3850 5600 3600 5600
NoConn ~ 3850 6400
NoConn ~ 3850 6500
$Comp
L Connector:AudioJack3 J3
U 1 1 5DEF17A4
P 1100 6100
F 0 "J3" H 1100 6450 50  0000 C CNN
F 1 "AudioJack3" H 1100 6350 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 1100 6100 50  0001 C CNN
F 3 "~" H 1100 6100 50  0001 C CNN
	1    1100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6200 1300 6400
Wire Wire Line
	1300 6400 2050 6400
Connection ~ 2050 6400
Wire Wire Line
	1300 6000 2250 6000
Wire Wire Line
	1300 6000 1300 6100
Connection ~ 1300 6000
Entry Wire Line
	3500 5500 3600 5600
Entry Wire Line
	3500 3750 3600 3850
Wire Wire Line
	3800 3750 3700 3750
Wire Wire Line
	9800 3350 8450 3350
Wire Wire Line
	9800 2700 10300 2700
Connection ~ 2850 750 
Connection ~ 1150 3800
Connection ~ 2500 3800
Wire Bus Line
	800  750  2850 750 
Wire Bus Line
	2850 750  3500 750 
Entry Wire Line
	2750 2800 2850 2900
Entry Wire Line
	2750 1400 2850 1500
Entry Wire Line
	2750 1300 2850 1400
Entry Wire Line
	2750 1200 2850 1300
Wire Wire Line
	1150 3000 900  3000
Entry Wire Line
	800  2900 900  3000
Entry Wire Line
	800  2300 900  2400
Entry Wire Line
	800  2000 900  2100
Entry Wire Line
	800  1900 900  2000
Entry Wire Line
	800  1800 900  1900
Entry Wire Line
	800  1700 900  1800
Entry Wire Line
	800  1600 900  1700
Entry Wire Line
	800  1500 900  1600
Entry Wire Line
	800  1400 900  1500
Entry Wire Line
	800  1300 900  1400
Entry Wire Line
	800  1200 900  1300
Entry Wire Line
	800  1100 900  1200
Connection ~ 2650 3500
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DCB98AE
P 2650 3500
F 0 "#FLG0101" H 2650 3575 50  0001 C CNN
F 1 "PWR_FLAG" H 2650 3650 50  0001 C CNN
F 2 "" H 2650 3500 50  0001 C CNN
F 3 "~" H 2650 3500 50  0001 C CNN
	1    2650 3500
	1    0    0    1   
$EndComp
Connection ~ 2650 3800
Connection ~ 900  3800
NoConn ~ 2500 3700
NoConn ~ 2500 3600
NoConn ~ 1150 3700
NoConn ~ 1150 3600
NoConn ~ 1150 3500
NoConn ~ 1150 3400
NoConn ~ 1150 3300
NoConn ~ 1150 3200
NoConn ~ 1150 3100
NoConn ~ 1150 2900
NoConn ~ 1150 2800
NoConn ~ 1150 2700
NoConn ~ 1150 2600
NoConn ~ 1150 2500
NoConn ~ 1150 2300
NoConn ~ 1150 2200
NoConn ~ 2500 3400
NoConn ~ 2500 3300
NoConn ~ 2500 3200
NoConn ~ 2500 3100
NoConn ~ 2500 3000
NoConn ~ 2500 2900
NoConn ~ 2500 2700
NoConn ~ 2500 2600
NoConn ~ 2500 2500
NoConn ~ 2500 2400
NoConn ~ 2500 2300
NoConn ~ 2500 2200
NoConn ~ 2500 2100
NoConn ~ 2500 2000
NoConn ~ 2500 1900
NoConn ~ 2500 1800
NoConn ~ 2500 1700
NoConn ~ 2500 1600
NoConn ~ 2500 1500
NoConn ~ 1150 1000
NoConn ~ 1150 1100
NoConn ~ 2500 1100
NoConn ~ 2500 1000
Text Label 2600 1400 0    50   ~ 0
A2
Text Label 2600 1300 0    50   ~ 0
A1
Text Label 2600 1200 0    50   ~ 0
A0
Text Label 2550 2800 0    50   ~ 0
R\~W
$Comp
L power:-12V #PWR0108
U 1 1 5D7AE362
P 2650 3500
F 0 "#PWR0108" H 2650 3600 50  0001 C CNN
F 1 "-12V" H 2650 3650 50  0000 C CNN
F 2 "" H 2650 3500 50  0001 C CNN
F 3 "" H 2650 3500 50  0001 C CNN
	1    2650 3500
	1    0    0    -1  
$EndComp
Text Label 900  3000 0    50   ~ 0
RESET
Text Label 900  2400 0    50   ~ 0
2MHZ
Text Label 950  2100 0    50   ~ 0
F0
Text Label 950  2000 0    50   ~ 0
~DS
Wire Wire Line
	2500 1400 2750 1400
Wire Wire Line
	2500 1300 2750 1300
Wire Wire Line
	2500 1200 2750 1200
Wire Wire Line
	2500 3500 2650 3500
Wire Wire Line
	2500 2800 2750 2800
Wire Wire Line
	2500 3800 2650 3800
$Comp
L power:+5V #PWR0107
U 1 1 5D6E7C1A
P 2650 3800
F 0 "#PWR0107" H 2650 3650 50  0001 C CNN
F 1 "+5V" H 2650 3940 50  0000 C CNN
F 2 "" H 2650 3800 50  0001 C CNN
F 3 "" H 2650 3800 50  0001 C CNN
	1    2650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3800 2500 3900
$Comp
L power:GND #PWR0106
U 1 1 5D6CC699
P 900 3800
F 0 "#PWR0106" H 900 3550 50  0001 C CNN
F 1 "GND" H 900 3650 50  0000 C CNN
F 2 "" H 900 3800 50  0001 C CNN
F 3 "" H 900 3800 50  0001 C CNN
	1    900  3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3800 900  3800
Wire Wire Line
	1150 3900 1150 3800
Wire Wire Line
	1150 2000 900  2000
Wire Wire Line
	1150 2100 900  2100
Wire Wire Line
	1150 2400 900  2400
Text Label 950  1900 0    50   ~ 0
B_D7
Text Label 950  1800 0    50   ~ 0
B_D6
Text Label 950  1700 0    50   ~ 0
B_D5
Text Label 950  1600 0    50   ~ 0
B_D4
Text Label 950  1500 0    50   ~ 0
B_D3
Text Label 950  1400 0    50   ~ 0
B_D2
Text Label 950  1300 0    50   ~ 0
B_D1
Wire Wire Line
	1150 1900 900  1900
Wire Wire Line
	1150 1800 900  1800
Wire Wire Line
	1150 1700 900  1700
Wire Wire Line
	1150 1600 900  1600
Wire Wire Line
	1150 1500 900  1500
Wire Wire Line
	1150 1400 900  1400
Wire Wire Line
	1150 1300 900  1300
Wire Wire Line
	900  1200 1150 1200
Text Label 950  1200 0    50   ~ 0
B_D0
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D1523E0
P 2650 3800
F 0 "#FLG02" H 2650 3875 50  0001 C CNN
F 1 "PWR_FLAG" H 2650 3950 50  0001 C CNN
F 2 "" H 2650 3800 50  0001 C CNN
F 3 "~" H 2650 3800 50  0001 C CNN
	1    2650 3800
	1    0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D152385
P 900 3800
F 0 "#FLG01" H 900 3875 50  0001 C CNN
F 1 "PWR_FLAG" H 900 3950 50  0001 C CNN
F 2 "" H 900 3800 50  0001 C CNN
F 3 "~" H 900 3800 50  0001 C CNN
	1    900  3800
	1    0    0    -1  
$EndComp
$Comp
L Sintechs-lib:Bus-Agat J1
U 1 1 5C83FE2B
P 1800 2350
F 0 "J1" H 1850 3850 50  0000 C CNN
F 1 "AGAT BUS Connector" H 1850 650 50  0000 C CNN
F 2 "AGAT_CON:AGAT_CONP" H 1800 2350 50  0001 C CNN
F 3 "~" H 1800 2350 50  0001 C CNN
	1    1800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3550 11700 3550
Wire Wire Line
	9650 4800 9750 4800
Wire Wire Line
	9750 4800 9750 4500
Wire Wire Line
	9750 4500 8800 4500
Wire Wire Line
	8800 4500 8800 4100
Wire Wire Line
	8800 4100 8950 4100
Connection ~ 9750 4800
Wire Wire Line
	9750 4800 10300 4800
Wire Wire Line
	8800 3550 8800 4000
Wire Wire Line
	8800 4000 8950 4000
Wire Wire Line
	9550 4000 9800 4000
Wire Wire Line
	9650 5450 9950 5450
Wire Wire Line
	9950 5450 9950 5000
Wire Wire Line
	4850 5900 8450 5900
Wire Wire Line
	4850 5800 8350 5800
Wire Wire Line
	5050 4900 5050 5600
Wire Bus Line
	2850 750  2850 3000
Wire Bus Line
	10000 650  10000 2200
Wire Bus Line
	5050 650  5050 1800
Wire Bus Line
	5800 650  5800 4800
Wire Bus Line
	800  750  800  3000
Wire Bus Line
	3500 750  3500 6450
$EndSCHEMATC
