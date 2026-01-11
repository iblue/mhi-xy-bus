EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ftdi
LIBS:mhixy-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title "MHI Bus to USB Interface"
Date "2018-09-08"
Rev "F3B1-3"
Comp "exablue GmbH"
Comment1 ""
Comment2 ""
Comment3 "clock signal."
Comment4 "Generates unstabilized 32V using a charge pump if exposed to an incoming TTL-level"
$EndDescr
Text HLabel 1700 1950 0    60   Input ~ 0
17V
Text HLabel 1700 3050 0    60   Input ~ 0
GND
Text HLabel 2600 2650 0    60   Input ~ 0
CLK
$Comp
L R R12
U 1 1 5B9398BF
P 2950 2650
F 0 "R12" V 3030 2650 50  0000 C CNN
F 1 "10k" V 2950 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2880 2650 50  0001 C CNN
F 3 "" H 2950 2650 50  0001 C CNN
	1    2950 2650
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_BEC Q3
U 1 1 5B9398F9
P 3450 2650
F 0 "Q3" H 3650 2700 50  0000 L CNN
F 1 "BC847C" H 3650 2600 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3650 2750 50  0001 C CNN
F 3 "" H 3450 2650 50  0001 C CNN
	1    3450 2650
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 5B93992A
P 3550 2100
F 0 "R13" V 3630 2100 50  0000 C CNN
F 1 "10k" V 3550 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3480 2100 50  0001 C CNN
F 3 "" H 3550 2100 50  0001 C CNN
	1    3550 2100
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5B939945
P 4000 2400
F 0 "R14" V 4080 2400 50  0000 C CNN
F 1 "1k" V 4000 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3930 2400 50  0001 C CNN
F 3 "" H 4000 2400 50  0001 C CNN
	1    4000 2400
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_BEC Q4
U 1 1 5B9399BA
P 4600 2150
F 0 "Q4" H 4800 2200 50  0000 L CNN
F 1 "BC817-40" H 4800 2100 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4800 2250 50  0001 C CNN
F 3 "" H 4600 2150 50  0001 C CNN
	1    4600 2150
	1    0    0    -1  
$EndComp
$Comp
L Q_PNP_BEC Q5
U 1 1 5B939A17
P 4600 2650
F 0 "Q5" H 4800 2700 50  0000 L CNN
F 1 "BC807-40" H 4800 2600 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4800 2750 50  0001 C CNN
F 3 "" H 4600 2650 50  0001 C CNN
	1    4600 2650
	1    0    0    1   
$EndComp
Wire Wire Line
	2600 2650 2800 2650
Wire Wire Line
	3100 2650 3250 2650
Wire Wire Line
	3550 2450 3550 2250
Wire Wire Line
	3550 2850 3550 3050
Wire Wire Line
	1700 3050 6200 3050
Wire Wire Line
	1700 1950 5300 1950
Wire Wire Line
	3550 2400 3850 2400
Connection ~ 3550 2400
Wire Wire Line
	4150 2400 4400 2400
Wire Wire Line
	4400 2150 4400 2650
Connection ~ 4400 2400
Connection ~ 3550 3050
Wire Wire Line
	4700 2450 4700 2350
Connection ~ 3550 1950
Wire Wire Line
	4700 3050 4700 2850
$Comp
L D_Schottky_x2_Serial_AKC D1
U 1 1 5B939D17
P 5600 1950
F 0 "D1" H 5650 1850 50  0000 C CNN
F 1 "BAT54S" H 5600 2050 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5600 1950 50  0001 C CNN
F 3 "" H 5600 1950 50  0001 C CNN
	1    5600 1950
	1    0    0    -1  
$EndComp
Connection ~ 4700 1950
$Comp
L CP C3
U 1 1 5B939DAE
P 5300 2400
F 0 "C3" H 5325 2500 50  0000 L CNN
F 1 "22u" H 5150 2400 50  0000 R CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 5338 2250 50  0001 C CNN
F 3 "" H 5300 2400 50  0001 C CNN
	1    5300 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 2400 4700 2400
Connection ~ 4700 2400
Wire Wire Line
	5450 2400 5600 2400
Wire Wire Line
	5600 2400 5600 2150
$Comp
L CP C4
U 1 1 5B939E76
P 6200 2400
F 0 "C4" H 6225 2500 50  0000 L CNN
F 1 "22u" H 6225 2300 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 6238 2250 50  0001 C CNN
F 3 "" H 6200 2400 50  0001 C CNN
	1    6200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3050 6200 2550
Connection ~ 4700 3050
Wire Wire Line
	6200 2250 6200 1950
Wire Wire Line
	5900 1950 6950 1950
Text HLabel 6950 1950 2    60   Input ~ 0
32V
Connection ~ 6200 1950
$EndSCHEMATC
