EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1100 1500 0    50   Input ~ 0
CTL_2+8
Wire Wire Line
	1000 3300 1250 3300
$Comp
L power:GND #PWR?
U 1 1 5D1E49A7
P 1000 3300
AR Path="/5D1E49A7" Ref="#PWR?"  Part="1" 
AR Path="/5C82B8F2/5D1E49A7" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 1000 3050 50  0001 C CNN
F 1 "GND" H 1000 3150 50  0000 C CNN
F 2 "" H 1000 3300 50  0001 C CNN
F 3 "" H 1000 3300 50  0001 C CNN
	1    1000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2450 1800 2650
Wire Wire Line
	1800 2450 1950 2450
$Comp
L power:GND #PWR?
U 1 1 5D1DA5F1
P 1950 2450
AR Path="/5D1DA5F1" Ref="#PWR?"  Part="1" 
AR Path="/5C82B8F2/5D1DA5F1" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 1950 2200 50  0001 C CNN
F 1 "GND" H 1950 2300 50  0000 C CNN
F 2 "" H 1950 2450 50  0001 C CNN
F 3 "" H 1950 2450 50  0001 C CNN
	1    1950 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 850  1550 850 
Wire Wire Line
	2150 650  2150 2000
Wire Wire Line
	1500 2000 2150 2000
Text Label 6600 2300 0    50   ~ 0
SPK2
Text Label 6600 1500 0    50   ~ 0
SPK1
Wire Wire Line
	9000 1200 9100 1200
Wire Wire Line
	9000 2250 9000 2500
Connection ~ 9000 2250
Wire Wire Line
	8950 2250 9000 2250
Connection ~ 1000 3300
Wire Wire Line
	850  3300 1000 3300
Wire Wire Line
	850  3650 850  3300
Wire Wire Line
	850  4400 850  4150
Wire Wire Line
	1250 3300 1250 3400
Connection ~ 1250 3300
Wire Wire Line
	1350 3300 1250 3300
Wire Wire Line
	850  3850 850  3950
$Comp
L Device:LED_Small D?
U 1 1 5C82C477
P 850 3750
AR Path="/5C82C477" Ref="D?"  Part="1" 
AR Path="/5C82B8F2/5C82C477" Ref="D1"  Part="1" 
F 0 "D1" H 800 3875 50  0000 L CNN
F 1 "Red" H 750 3650 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" V 850 3750 50  0001 C CNN
F 3 "~" V 850 3750 50  0001 C CNN
	1    850  3750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C82C470
P 850 4050
AR Path="/5C82C470" Ref="R?"  Part="1" 
AR Path="/5C82B8F2/5C82C470" Ref="R1"  Part="1" 
F 0 "R1" H 880 4070 50  0000 L CNN
F 1 "500" H 880 4010 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 850 4050 50  0001 C CNN
F 3 "~" H 850 4050 50  0001 C CNN
	1    850  4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 2950 2050 3150
Wire Wire Line
	2050 3300 2050 3800
Connection ~ 2050 3300
Wire Wire Line
	1850 3300 2050 3300
Wire Wire Line
	1550 3300 1650 3300
$Comp
L Device:LED_Small D?
U 1 1 5C82C464
P 1450 3300
AR Path="/5C82C464" Ref="D?"  Part="1" 
AR Path="/5C82B8F2/5C82C464" Ref="D2"  Part="1" 
F 0 "D2" H 1400 3425 50  0000 L CNN
F 1 "Yellow" H 1275 3200 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" V 1450 3300 50  0001 C CNN
F 3 "~" V 1450 3300 50  0001 C CNN
	1    1450 3300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C82C45D
P 1750 3300
AR Path="/5C82C45D" Ref="R?"  Part="1" 
AR Path="/5C82B8F2/5C82C45D" Ref="R2"  Part="1" 
F 0 "R2" H 1780 3320 50  0000 L CNN
F 1 "500" H 1780 3260 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1750 3300 50  0001 C CNN
F 3 "~" H 1750 3300 50  0001 C CNN
	1    1750 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 4400 2050 4400
Connection ~ 1550 4400
$Comp
L power:+5V #PWR?
U 1 1 5C82C455
P 1550 4400
AR Path="/5C82C455" Ref="#PWR?"  Part="1" 
AR Path="/5C82B8F2/5C82C455" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 1550 4250 50  0001 C CNN
F 1 "+5V" H 1550 4540 50  0000 C CNN
F 2 "" H 1550 4400 50  0001 C CNN
F 3 "" H 1550 4400 50  0001 C CNN
	1    1550 4400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL084 U?
U 5 1 5C82C44A
P 2150 4100
AR Path="/5C82C44A" Ref="U?"  Part="5" 
AR Path="/5C82B8F2/5C82C44A" Ref="U15"  Part="5" 
F 0 "U15" H 2150 4300 50  0000 L CNN
F 1 "TL084" H 2150 3900 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2100 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 2200 4300 50  0001 C CNN
	5    2150 4100
	1    0    0    1   
$EndComp
Wire Wire Line
	1250 4400 850  4400
Wire Wire Line
	1550 4400 1250 4400
Connection ~ 1250 4400
$Comp
L 4xxx:4050 U?
U 7 1 5C82C443
P 1250 3900
AR Path="/5C82C443" Ref="U?"  Part="7" 
AR Path="/5C82B8F2/5C82C443" Ref="U13"  Part="7" 
F 0 "U13" H 1250 3950 50  0000 C CNN
F 1 "4050" H 1250 3850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1250 3900 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 1250 3900 50  0001 C CNN
	7    1250 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	6200 1500 6250 1500
Wire Wire Line
	6200 3250 6200 1500
Wire Wire Line
	6000 3250 6200 3250
Wire Wire Line
	6000 3250 5850 3250
Connection ~ 6000 3250
Wire Wire Line
	6000 3600 6000 3250
Wire Wire Line
	5850 3600 6000 3600
Connection ~ 6200 1500
Wire Wire Line
	5850 1500 6200 1500
Wire Wire Line
	5900 4100 5900 2650
Wire Wire Line
	5850 4100 5900 4100
Text Label 1550 2000 0    50   ~ 0
AUDIO_OUT
Wire Wire Line
	10800 650  10800 2500
Wire Wire Line
	10800 650  2150 650 
Wire Wire Line
	1300 2600 1300 2950
Wire Wire Line
	1700 2600 1350 2600
Wire Wire Line
	1700 2200 1700 2600
Wire Wire Line
	1500 2200 1700 2200
Text Label 1550 1800 0    50   ~ 0
CTRL1
Wire Wire Line
	4300 3250 4700 3250
Wire Wire Line
	4300 1400 4300 3250
Wire Wire Line
	4700 1400 4300 1400
Connection ~ 4300 3250
Wire Wire Line
	2650 3250 4300 3250
Wire Wire Line
	2650 2000 2650 3250
Wire Wire Line
	2350 2000 2650 2000
Wire Wire Line
	2350 1800 2350 2000
Wire Wire Line
	1500 1800 2350 1800
Wire Wire Line
	3750 2350 3450 2350
Wire Wire Line
	3750 750  3750 2350
Wire Wire Line
	6000 750  3750 750 
Wire Wire Line
	6000 1200 6000 750 
Wire Wire Line
	6000 1200 5850 1200
Connection ~ 6000 1200
Wire Wire Line
	6000 2950 6000 1200
Wire Wire Line
	5850 2950 6000 2950
Text Label 1550 1700 0    50   ~ 0
PDC
Wire Wire Line
	2750 2350 2850 2350
Wire Wire Line
	2750 1900 2750 2350
Wire Wire Line
	2450 1900 2750 1900
Wire Wire Line
	2450 1700 2450 1900
Wire Wire Line
	1500 1700 2450 1700
$Comp
L 4xxx:4050 U?
U 4 1 5C82C40D
P 3150 2350
AR Path="/5C82C40D" Ref="U?"  Part="4" 
AR Path="/5C82B8F2/5C82C40D" Ref="U13"  Part="4" 
F 0 "U13" H 3150 2500 50  0000 C CNN
F 1 "4050" H 3100 2350 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3150 2350 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 3150 2350 50  0001 C CNN
	4    3150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4100 4400 4100
Text Label 1550 1200 0    50   ~ 0
IO_M0
Wire Wire Line
	2650 1100 2650 1200
Wire Wire Line
	4400 1100 2650 1100
Wire Wire Line
	4400 4100 4400 2400
Wire Wire Line
	4400 1100 4400 2400
Connection ~ 4400 2400
Wire Wire Line
	4700 2400 4400 2400
Wire Wire Line
	4700 2600 4700 2650
Wire Wire Line
	4700 2650 5900 2650
Wire Wire Line
	4500 1900 4700 1900
Wire Wire Line
	4500 3850 4500 1900
Wire Wire Line
	4700 3850 4500 3850
Connection ~ 4500 1900
Wire Wire Line
	3650 1900 4500 1900
Wire Wire Line
	3650 2000 3650 1900
Wire Wire Line
	3450 2000 3650 2000
Wire Wire Line
	2650 1650 2650 1500
Wire Wire Line
	2850 1650 2650 1650
Text Label 1550 1500 0    50   ~ 0
CTRL2+8
Wire Wire Line
	2850 2000 2850 1800
Wire Wire Line
	4600 3500 4200 3500
Wire Wire Line
	4600 3050 4600 3500
Wire Wire Line
	4700 3050 4600 3050
Wire Wire Line
	4650 1200 4650 1600
Wire Wire Line
	4700 1200 4650 1200
Wire Wire Line
	4650 1600 4200 1600
Wire Wire Line
	4200 1600 3650 1600
Connection ~ 4200 1600
Wire Wire Line
	4200 3500 4200 1600
Connection ~ 4600 3500
Wire Wire Line
	4700 3500 4600 3500
Wire Wire Line
	3650 1650 3450 1650
Wire Wire Line
	3650 1600 3650 1650
Connection ~ 4650 1600
Wire Wire Line
	4700 1600 4650 1600
Text Label 1550 1600 0    50   ~ 0
CTRL4
Wire Wire Line
	2550 1600 1500 1600
Wire Wire Line
	2550 1800 2550 1600
Wire Wire Line
	2850 1800 2550 1800
Wire Wire Line
	4100 1300 4700 1300
Wire Wire Line
	4100 3150 4100 1300
Wire Wire Line
	4700 3150 4100 3150
Connection ~ 4100 1300
Wire Wire Line
	3450 1300 4100 1300
Text Label 1550 1300 0    50   ~ 0
ADDR8
Wire Wire Line
	1900 1400 1900 950 
Wire Wire Line
	1500 1400 1900 1400
Wire Wire Line
	1550 1100 1550 850 
Wire Wire Line
	1500 1100 1550 1100
Wire Wire Line
	1800 2650 2050 2650
Wire Wire Line
	5900 2400 5900 2650
Connection ~ 4700 2650
Wire Wire Line
	4700 2850 4700 2650
$Comp
L power:+5V #PWR?
U 1 1 5C82C3CC
P 1900 950
AR Path="/5C82C3CC" Ref="#PWR?"  Part="1" 
AR Path="/5C82B8F2/5C82C3CC" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 1900 800 50  0001 C CNN
F 1 "+5V" H 1900 1090 50  0000 C CNN
F 2 "" H 1900 950 50  0001 C CNN
F 3 "" H 1900 950 50  0001 C CNN
	1    1900 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C82C3C6
P 1650 850
AR Path="/5C82C3C6" Ref="#PWR?"  Part="1" 
AR Path="/5C82B8F2/5C82C3C6" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 1650 600 50  0001 C CNN
F 1 "GND" H 1650 700 50  0000 C CNN
F 2 "" H 1650 850 50  0001 C CNN
F 3 "" H 1650 850 50  0001 C CNN
	1    1650 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2850 7000 3400
Wire Wire Line
	6100 1700 6100 3400
Wire Wire Line
	5850 1700 6100 1700
Wire Wire Line
	7000 3400 6700 3400
Wire Wire Line
	6100 3400 6700 3400
Connection ~ 6700 3400
Wire Wire Line
	6700 3400 6700 3250
Connection ~ 6100 3400
Wire Wire Line
	5850 3400 6100 3400
Wire Wire Line
	6850 3250 6700 3250
Wire Wire Line
	6850 3100 6850 3250
Wire Wire Line
	6700 2850 6700 2950
Wire Wire Line
	7000 2550 6900 2550
Wire Wire Line
	6900 2550 6700 2550
Connection ~ 6900 2550
$Comp
L Device:R R?
U 1 1 5C82C3AC
P 6700 2700
AR Path="/5C82C3AC" Ref="R?"  Part="1" 
AR Path="/5C82B8F2/5C82C3AC" Ref="R3"  Part="1" 
F 0 "R3" V 6780 2700 50  0000 C CNN
F 1 "10k" V 6700 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6630 2700 50  0001 C CNN
F 3 "~" H 6700 2700 50  0001 C CNN
	1    6700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3900 6400 2300
Wire Wire Line
	1300 2950 1350 2950
Wire Wire Line
	2050 3150 2300 3150
Connection ~ 1800 2650
Wire Wire Line
	1650 2650 1800 2650
Connection ~ 2050 2950
Wire Wire Line
	1950 2950 2050 2950
$Comp
L power:-5V #PWR?
U 1 1 5C82C39B
P 2300 3150
AR Path="/5C82C39B" Ref="#PWR?"  Part="1" 
AR Path="/5C82B8F2/5C82C39B" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 2300 3250 50  0001 C CNN
F 1 "-5V" H 2315 3323 50  0000 C CNN
F 2 "" H 2300 3150 50  0001 C CNN
F 3 "" H 2300 3150 50  0001 C CNN
	1    2300 3150
	1    0    0    -1  
$EndComp
Text Label 1550 2200 0    50   ~ 0
-12V
$Comp
L Device:CP C?
U 1 1 5C82C393
P 2050 2800
AR Path="/5C82C393" Ref="C?"  Part="1" 
AR Path="/5C82B8F2/5C82C393" Ref="C1"  Part="1" 
F 0 "C1" H 2168 2846 50  0000 L CNN
F 1 "10uF 25v" H 2168 2755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D4.5mm_P2.50mm" H 2088 2650 50  0001 C CNN
F 3 "~" H 2050 2800 50  0001 C CNN
	1    2050 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C82C38C
P 7000 2700
AR Path="/5C82C38C" Ref="C?"  Part="1" 
AR Path="/5C82B8F2/5C82C38C" Ref="C2"  Part="1" 
F 0 "C2" H 7115 2746 50  0000 L CNN
F 1 "68p" H 7115 2655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 7038 2550 50  0001 C CNN
F 3 "~" H 7000 2700 50  0001 C CNN
	1    7000 2700
	1    0    0    -1  
$EndComp
Connection ~ 6700 3250
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5C82C385
P 6700 3100
AR Path="/5C82C385" Ref="RV?"  Part="1" 
AR Path="/5C82B8F2/5C82C385" Ref="RV1"  Part="1" 
F 0 "RV1" H 6630 3146 50  0000 R CNN
F 1 "50k" H 6630 3055 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-H5_Horizontal" H 6700 3100 50  0001 C CNN
F 3 "~" H 6700 3100 50  0001 C CNN
	1    6700 3100
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7905 U?
U 1 1 5C82C37E
P 1650 2950
AR Path="/5C82C37E" Ref="U?"  Part="1" 
AR Path="/5C82B8F2/5C82C37E" Ref="U14"  Part="1" 
F 0 "U14" H 1650 2800 50  0000 C CNN
F 1 "L7905" H 1650 2709 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1650 2750 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/c9/16/86/41/c7/2b/45/f2/CD00000450.pdf/files/CD00000450.pdf/jcr:content/translations/en.CD00000450.pdf" H 1650 2950 50  0001 C CNN
	1    1650 2950
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 U?
U 3 1 5C82C377
P 3150 2000
AR Path="/5C82C377" Ref="U?"  Part="3" 
AR Path="/5C82B8F2/5C82C377" Ref="U13"  Part="3" 
F 0 "U13" H 3150 2150 50  0000 C CNN
F 1 "4050" H 3100 2000 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3150 2000 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 3150 2000 50  0001 C CNN
	3    3150 2000
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 U?
U 2 1 5C82C370
P 3150 1650
AR Path="/5C82C370" Ref="U?"  Part="2" 
AR Path="/5C82B8F2/5C82C370" Ref="U13"  Part="2" 
F 0 "U13" H 3150 1800 50  0000 C CNN
F 1 "4050" H 3100 1650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3150 1650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 3150 1650 50  0001 C CNN
	2    3150 1650
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 U?
U 1 1 5C82C369
P 3150 1300
AR Path="/5C82C369" Ref="U?"  Part="1" 
AR Path="/5C82B8F2/5C82C369" Ref="U13"  Part="1" 
F 0 "U13" H 3150 1450 50  0000 C CNN
F 1 "4050" H 3100 1300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3150 1300 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 3150 1300 50  0001 C CNN
	1    3150 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1300 2850 1300
Wire Wire Line
	1100 1200 1500 1200
Wire Wire Line
	2650 1200 1500 1200
Connection ~ 1500 1200
$Comp
L Connector:Conn_01x12_Female J?
U 1 1 5C82C362
P 1300 1600
AR Path="/5C82C362" Ref="J?"  Part="1" 
AR Path="/5C82B8F2/5C82C362" Ref="J2"  Part="1" 
F 0 "J2" H 1150 2200 50  0000 L CNN
F 1 "Conn_01x12_Female" H 1100 2200 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Horizontal" H 1300 1600 50  0001 C CNN
F 3 "~" H 1300 1600 50  0001 C CNN
	1    1300 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 3900 6400 3900
Wire Wire Line
	6300 2100 6400 2100
Wire Wire Line
	6300 3800 6300 2100
Wire Wire Line
	5850 3800 6300 3800
$Comp
L Custom_parts:KR1803VZH1 U?
U 1 1 5C82C356
P 5300 3450
AR Path="/5C82C356" Ref="U?"  Part="1" 
AR Path="/5C82B8F2/5C82C356" Ref="U16"  Part="1" 
F 0 "U16" H 5300 4300 50  0000 C CNN
F 1 "KR1803VZH1" H 5300 4200 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 5400 2650 50  0001 C CNN
F 3 "" H 5200 3700 50  0001 C CNN
	1    5300 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9500 2100 9500 2800
Wire Wire Line
	9600 2100 9500 2100
Wire Wire Line
	8500 1500 8500 1200
Wire Wire Line
	8250 1500 8500 1500
Wire Wire Line
	8500 1200 8250 1200
Connection ~ 8500 1500
Wire Wire Line
	8500 1900 8500 1500
Wire Wire Line
	7750 1200 7750 1500
Wire Wire Line
	7950 1200 7750 1200
Wire Wire Line
	7950 1500 7750 1500
Wire Wire Line
	10300 1500 10300 2000
Wire Wire Line
	10000 1500 10300 1500
Connection ~ 10300 1500
Wire Wire Line
	10300 1200 10300 1500
Wire Wire Line
	9400 1200 10300 1200
Wire Wire Line
	10300 2000 10200 2000
Wire Wire Line
	10450 2500 10800 2500
Wire Wire Line
	10300 2350 10300 2300
Connection ~ 9500 2800
Wire Wire Line
	10300 2800 9500 2800
Wire Wire Line
	10300 2650 10300 2800
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5C82C335
P 10300 2500
AR Path="/5C82C335" Ref="RV?"  Part="1" 
AR Path="/5C82B8F2/5C82C335" Ref="RV2"  Part="1" 
F 0 "RV2" H 10230 2546 50  0000 R CNN
F 1 "22k" H 10230 2455 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-H3,8_Horizontal" H 10300 2500 50  0001 C CNN
F 3 "~" H 10300 2500 50  0001 C CNN
	1    10300 2500
	1    0    0    -1  
$EndComp
Connection ~ 10300 2000
$Comp
L Device:C C?
U 1 1 5C82C32E
P 10300 2150
AR Path="/5C82C32E" Ref="C?"  Part="1" 
AR Path="/5C82B8F2/5C82C32E" Ref="C8"  Part="1" 
F 0 "C8" H 10415 2196 50  0000 L CNN
F 1 "100n" H 10415 2105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10338 2000 50  0001 C CNN
F 3 "~" H 10300 2150 50  0001 C CNN
	1    10300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1900 9600 1900
Wire Wire Line
	9500 1500 9500 1900
Wire Wire Line
	9700 1500 9500 1500
$Comp
L Device:C C?
U 1 1 5C82C322
P 9850 1500
AR Path="/5C82C322" Ref="C?"  Part="1" 
AR Path="/5C82B8F2/5C82C322" Ref="C7"  Part="1" 
F 0 "C7" V 9598 1500 50  0000 C CNN
F 1 "1n" V 9689 1500 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9888 1350 50  0001 C CNN
F 3 "~" H 9850 1500 50  0001 C CNN
	1    9850 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C82C31B
P 9250 1200
AR Path="/5C82C31B" Ref="R?"  Part="1" 
AR Path="/5C82B8F2/5C82C31B" Ref="R12"  Part="1" 
F 0 "R12" V 9150 1200 50  0000 C CNN
F 1 "20k" V 9250 1200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9180 1200 50  0001 C CNN
F 3 "" H 9250 1200 50  0001 C CNN
	1    9250 1200
	0    1    1    0   
$EndComp
Connection ~ 9500 1900
Wire Wire Line
	9400 1900 9500 1900
Wire Wire Line
	9000 1900 9000 2250
Wire Wire Line
	9000 1200 9000 1900
Connection ~ 9000 1900
Wire Wire Line
	9100 1900 9000 1900
$Comp
L Device:R R?
U 1 1 5C82C312
P 9250 1900
AR Path="/5C82C312" Ref="R?"  Part="1" 
AR Path="/5C82B8F2/5C82C312" Ref="R13"  Part="1" 
F 0 "R13" V 9150 1900 50  0000 C CNN
F 1 "6k8" V 9250 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9180 1900 50  0001 C CNN
F 3 "" H 9250 1900 50  0001 C CNN
	1    9250 1900
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5C82C30B
P 8100 1200
AR Path="/5C82C30B" Ref="C?"  Part="1" 
AR Path="/5C82B8F2/5C82C30B" Ref="C4"  Part="1" 
F 0 "C4" V 7848 1200 50  0000 C CNN
F 1 "1n" V 7939 1200 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8138 1050 50  0001 C CNN
F 3 "~" H 8100 1200 50  0001 C CNN
	1    8100 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C82C304
P 8100 1500
AR Path="/5C82C304" Ref="R?"  Part="1" 
AR Path="/5C82B8F2/5C82C304" Ref="R9"  Part="1" 
F 0 "R9" V 8000 1500 50  0000 C CNN
F 1 "10k" V 8100 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8030 1500 50  0001 C CNN
F 3 "" H 8100 1500 50  0001 C CNN
	1    8100 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 2250 8500 2500
Wire Wire Line
	8650 2250 8500 2250
Connection ~ 8500 2250
Wire Wire Line
	8500 2200 8500 2250
Wire Wire Line
	8500 1900 8350 1900
$Comp
L Device:R R?
U 1 1 5C82C2F2
P 8800 2250
AR Path="/5C82C2F2" Ref="R?"  Part="1" 
AR Path="/5C82B8F2/5C82C2F2" Ref="R11"  Part="1" 
F 0 "R11" V 8700 2250 50  0000 C CNN
F 1 "10k" V 8800 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8730 2250 50  0001 C CNN
F 3 "" H 8800 2250 50  0001 C CNN
	1    8800 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 2800 9000 2800
Connection ~ 9000 2800
$Comp
L Device:C C?
U 1 1 5C82C2EB
P 9000 2650
AR Path="/5C82C2EB" Ref="C?"  Part="1" 
AR Path="/5C82B8F2/5C82C2EB" Ref="C6"  Part="1" 
F 0 "C6" H 9115 2696 50  0000 L CNN
F 1 "10n" H 9115 2605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9038 2500 50  0001 C CNN
F 3 "~" H 9000 2650 50  0001 C CNN
	1    9000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2800 8500 2800
Connection ~ 8500 2800
$Comp
L Device:C C?
U 1 1 5C82C2E4
P 8500 2650
AR Path="/5C82C2E4" Ref="C?"  Part="1" 
AR Path="/5C82B8F2/5C82C2E4" Ref="C5"  Part="1" 
F 0 "C5" H 8615 2696 50  0000 L CNN
F 1 "10n" H 8615 2605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8538 2500 50  0001 C CNN
F 3 "~" H 8500 2650 50  0001 C CNN
	1    8500 2650
	1    0    0    -1  
$EndComp
Connection ~ 8500 1900
$Comp
L Device:R R?
U 1 1 5C82C2DD
P 8500 2050
AR Path="/5C82C2DD" Ref="R?"  Part="1" 
AR Path="/5C82B8F2/5C82C2DD" Ref="R10"  Part="1" 
F 0 "R10" H 8570 2096 50  0000 L CNN
F 1 "12k" H 8570 2005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8430 2050 50  0001 C CNN
F 3 "" H 8500 2050 50  0001 C CNN
	1    8500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2800 7750 2950
Wire Wire Line
	7750 2500 8050 2500
Wire Wire Line
	8500 2800 8050 2800
Wire Wire Line
	7750 2800 8050 2800
Connection ~ 8050 2800
$Comp
L Device:C C?
U 1 1 5C82C2D2
P 8050 2650
AR Path="/5C82C2D2" Ref="C?"  Part="1" 
AR Path="/5C82B8F2/5C82C2D2" Ref="C3"  Part="1" 
F 0 "C3" H 8165 2696 50  0000 L CNN
F 1 "1n" H 8165 2605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8088 2500 50  0001 C CNN
F 3 "~" H 8050 2650 50  0001 C CNN
	1    8050 2650
	1    0    0    -1  
$EndComp
Connection ~ 7750 2800
Connection ~ 7750 2500
$Comp
L Device:R R?
U 1 1 5C82C2CA
P 7750 2650
AR Path="/5C82C2CA" Ref="R?"  Part="1" 
AR Path="/5C82B8F2/5C82C2CA" Ref="R8"  Part="1" 
F 0 "R8" H 7820 2696 50  0000 L CNN
F 1 "10k" H 7820 2605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7680 2650 50  0001 C CNN
F 3 "" H 7750 2650 50  0001 C CNN
	1    7750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2300 7750 2000
Wire Wire Line
	7750 2500 7750 2300
Connection ~ 7750 2300
Wire Wire Line
	7600 2300 7750 2300
Connection ~ 7750 1500
Wire Wire Line
	7750 1500 7750 1800
Wire Wire Line
	7600 1500 7750 1500
Connection ~ 6400 2300
Wire Wire Line
	6400 2200 6400 2300
Wire Wire Line
	5850 2200 6400 2200
$Comp
L Device:R R?
U 1 1 5C82C2B9
P 7450 2300
AR Path="/5C82C2B9" Ref="R?"  Part="1" 
AR Path="/5C82B8F2/5C82C2B9" Ref="R7"  Part="1" 
F 0 "R7" V 7350 2300 50  0000 C CNN
F 1 "10k" V 7450 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7380 2300 50  0001 C CNN
F 3 "" H 7450 2300 50  0001 C CNN
	1    7450 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C82C2B2
P 7450 1500
AR Path="/5C82C2B2" Ref="R?"  Part="1" 
AR Path="/5C82B8F2/5C82C2B2" Ref="R6"  Part="1" 
F 0 "R6" V 7350 1500 50  0000 C CNN
F 1 "10k" V 7450 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7380 1500 50  0001 C CNN
F 3 "" H 7450 1500 50  0001 C CNN
	1    7450 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 2100 6400 1500
Connection ~ 6300 2100
Wire Wire Line
	5850 2100 6300 2100
Wire Wire Line
	7050 2300 7300 2300
Wire Wire Line
	6400 2300 7050 2300
Connection ~ 7050 2300
$Comp
L Device:R R?
U 1 1 5C82C2A8
P 7050 2150
AR Path="/5C82C2A8" Ref="R?"  Part="1" 
AR Path="/5C82B8F2/5C82C2A8" Ref="R5"  Part="1" 
F 0 "R5" H 7120 2196 50  0000 L CNN
F 1 "47" H 7120 2105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6980 2150 50  0001 C CNN
F 3 "" H 7050 2150 50  0001 C CNN
	1    7050 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1500 7050 1500
Wire Wire Line
	6400 1500 7050 1500
Connection ~ 7050 1500
$Comp
L Device:R R?
U 1 1 5C82C2A1
P 7050 1650
AR Path="/5C82C2A1" Ref="R?"  Part="1" 
AR Path="/5C82B8F2/5C82C2A1" Ref="R4"  Part="1" 
F 0 "R4" H 7120 1696 50  0000 L CNN
F 1 "47" H 7120 1605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6980 1650 50  0001 C CNN
F 3 "" H 7050 1650 50  0001 C CNN
	1    7050 1650
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5C82C29B
P 6900 1100
AR Path="/5C82C29B" Ref="#PWR?"  Part="1" 
AR Path="/5C82B8F2/5C82C29B" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 6900 1200 50  0001 C CNN
F 1 "-5V" H 6915 1273 50  0000 C CNN
F 2 "" H 6900 1100 50  0001 C CNN
F 3 "" H 6900 1100 50  0001 C CNN
	1    6900 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C82C295
P 4700 2600
AR Path="/5C82C295" Ref="#PWR?"  Part="1" 
AR Path="/5C82B8F2/5C82C295" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 4700 2450 50  0001 C CNN
F 1 "+5V" H 4800 2700 50  0000 C CNN
F 2 "" H 4700 2600 50  0001 C CNN
F 3 "" H 4700 2600 50  0001 C CNN
	1    4700 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C82C28F
P 7750 2950
AR Path="/5C82C28F" Ref="#PWR?"  Part="1" 
AR Path="/5C82B8F2/5C82C28F" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 7750 2700 50  0001 C CNN
F 1 "GND" H 7755 2777 50  0000 C CNN
F 2 "" H 7750 2950 50  0001 C CNN
F 3 "" H 7750 2950 50  0001 C CNN
	1    7750 2950
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL084 U?
U 2 1 5C82C288
P 9900 2000
AR Path="/5C82C288" Ref="U?"  Part="2" 
AR Path="/5C82B8F2/5C82C288" Ref="U15"  Part="2" 
F 0 "U15" H 9950 2250 50  0000 C CNN
F 1 "TL084" H 10000 2150 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9850 2100 50  0001 C CNN
F 3 "" H 9950 2200 50  0001 C CNN
	2    9900 2000
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL084 U?
U 1 1 5C82C281
P 8050 1900
AR Path="/5C82C281" Ref="U?"  Part="1" 
AR Path="/5C82B8F2/5C82C281" Ref="U15"  Part="1" 
F 0 "U15" H 8100 2150 50  0000 C CNN
F 1 "TL084" H 8150 2050 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8000 2000 50  0001 C CNN
F 3 "" H 8100 2100 50  0001 C CNN
	1    8050 1900
	1    0    0    1   
$EndComp
Wire Wire Line
	1500 1500 2650 1500
NoConn ~ 5850 1100
NoConn ~ 5850 1300
NoConn ~ 5850 1400
NoConn ~ 5850 1600
NoConn ~ 5850 1800
NoConn ~ 5850 2000
NoConn ~ 5850 2300
NoConn ~ 5850 2850
NoConn ~ 5850 3050
NoConn ~ 5850 3150
NoConn ~ 5850 3500
NoConn ~ 5850 3700
NoConn ~ 5850 4000
NoConn ~ 4700 3950
NoConn ~ 4700 3750
NoConn ~ 4700 3600
NoConn ~ 4700 3400
NoConn ~ 4700 2000
NoConn ~ 4700 1800
NoConn ~ 4700 1700
NoConn ~ 4700 1500
Text HLabel 1100 1300 0    50   Input ~ 0
ADDR_8
Wire Wire Line
	1500 1300 1100 1300
Connection ~ 1500 1300
NoConn ~ 1500 1900
NoConn ~ 1500 2100
$Comp
L power:-12V #PWR0109
U 1 1 5DCB919E
P 1350 2600
F 0 "#PWR0109" H 1350 2700 50  0001 C CNN
F 1 "-12V" H 1350 2750 50  0000 C CNN
F 2 "" H 1350 2600 50  0001 C CNN
F 3 "" H 1350 2600 50  0001 C CNN
	1    1350 2600
	1    0    0    -1  
$EndComp
Connection ~ 1350 2600
Wire Wire Line
	1350 2600 1300 2600
Text HLabel 1100 1600 0    50   Input ~ 0
CTL_4
Text HLabel 1100 1700 0    50   Input ~ 0
PDC
Text HLabel 1100 1800 0    50   Input ~ 0
CTL_1
Text HLabel 1100 2000 0    50   Input ~ 0
AUDIO_OUT
Text HLabel 1100 2200 0    50   Input ~ 0
-12V
Text HLabel 1100 1200 0    50   Input ~ 0
I\O_M0
Wire Wire Line
	1100 1500 1500 1500
Connection ~ 1500 1500
Wire Wire Line
	1100 1600 1500 1600
Connection ~ 1500 1600
Wire Wire Line
	1100 1700 1500 1700
Connection ~ 1500 1700
Wire Wire Line
	1100 1800 1500 1800
Connection ~ 1500 1800
Wire Wire Line
	1100 2000 1500 2000
Connection ~ 1500 2000
Wire Wire Line
	1100 2200 1500 2200
Connection ~ 1500 2200
Text HLabel 1100 1100 0    50   Input ~ 0
GND
Wire Wire Line
	1500 1100 1100 1100
Connection ~ 1500 1100
Text HLabel 1100 1400 0    50   Input ~ 0
+5V
Wire Wire Line
	1500 1400 1100 1400
Connection ~ 1500 1400
$Comp
L Custom_parts:TMS5100NL U?
U 1 1 5C82C27A
P 5300 1700
AR Path="/5C82C27A" Ref="U?"  Part="1" 
AR Path="/5C82B8F2/5C82C27A" Ref="U17"  Part="1" 
F 0 "U17" H 5325 2565 50  0000 C CNN
F 1 "TMS5100NL" H 5325 2474 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 5200 1950 50  0001 C CNN
F 3 "" H 5200 1950 50  0001 C CNN
	1    5300 1700
	-1   0    0    -1  
$EndComp
Connection ~ 5900 2650
Wire Wire Line
	5850 2400 5900 2400
Wire Wire Line
	7050 1800 7050 1900
Wire Wire Line
	7050 1900 6900 1900
Connection ~ 7050 1900
Wire Wire Line
	7050 1900 7050 2000
Connection ~ 6900 1900
Wire Wire Line
	6900 1900 6900 2550
Connection ~ 2050 3150
Wire Wire Line
	2050 3150 2050 3300
$Comp
L Diode:1N4007 D3
U 1 1 5D545553
P 6550 1250
F 0 "D3" H 6550 1350 50  0000 C CNN
F 1 "1N4007" H 6550 1150 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6550 1075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6550 1250 50  0001 C CNN
	1    6550 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6900 1100 6900 1250
Wire Wire Line
	6400 1250 6250 1250
Wire Wire Line
	6250 1250 6250 1500
Connection ~ 6900 1250
Wire Wire Line
	6900 1250 6900 1900
Wire Wire Line
	6700 1250 6900 1250
Wire Wire Line
	4700 2950 4700 2850
Connection ~ 4700 2850
$Comp
L power:+5V #PWR?
U 1 1 5D879765
P 4650 1000
AR Path="/5D879765" Ref="#PWR?"  Part="1" 
AR Path="/5C82B8F2/5D879765" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 4650 850 50  0001 C CNN
F 1 "+5V" H 4650 1140 50  0000 C CNN
F 2 "" H 4650 1000 50  0001 C CNN
F 3 "" H 4650 1000 50  0001 C CNN
	1    4650 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1000 4650 1100
Wire Wire Line
	4650 1100 4700 1100
$EndSCHEMATC
