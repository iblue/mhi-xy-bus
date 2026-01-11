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
Sheet 6 7
Title "MHI Bus to USB Interface"
Date "2018-09-08"
Rev "F3B1-3"
Comp "exablue GmbH"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Outputs the high (22V) and low (12V) levels onto the MHI bus, driven by TTL inputs."
$EndDescr
Text HLabel 6300 2100 0    60   Input ~ 0
TTLInHigh
$Comp
L R R22
U 1 1 5B93CD26
P 6700 2100
F 0 "R22" V 6780 2100 50  0000 C CNN
F 1 "10k" V 6700 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6630 2100 50  0001 C CNN
F 3 "" H 6700 2100 50  0001 C CNN
	1    6700 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 2100 6550 2100
$Comp
L Q_NPN_BEC Q8
U 1 1 5B93CD98
P 7250 2100
F 0 "Q8" H 7450 2150 50  0000 L CNN
F 1 "BC847C" H 7450 2050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7450 2200 50  0001 C CNN
F 3 "" H 7250 2100 50  0001 C CNN
	1    7250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2100 6850 2100
$Comp
L R R23
U 1 1 5B93CDD1
P 7350 1650
F 0 "R23" V 7430 1650 50  0000 C CNN
F 1 "100k" V 7350 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7280 1650 50  0001 C CNN
F 3 "" H 7350 1650 50  0001 C CNN
	1    7350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1900 7350 1800
Text HLabel 7350 1200 1    60   Input ~ 0
32V
Wire Wire Line
	7350 1200 7350 1500
Text HLabel 7350 2650 3    60   Input ~ 0
GND
Wire Wire Line
	7350 2650 7350 2300
$Comp
L R R24
U 1 1 5B93CE53
P 7950 2100
F 0 "R24" V 8030 2100 50  0000 C CNN
F 1 "10k" V 7950 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7880 2100 50  0001 C CNN
F 3 "" H 7950 2100 50  0001 C CNN
	1    7950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1850 7950 1850
Wire Wire Line
	7950 1850 7950 1950
Connection ~ 7350 1850
Text HLabel 6250 3700 0    60   Input ~ 0
22V
$Comp
L Q_PNP_BEC Q9
U 1 1 5B93CF08
P 7950 3600
F 0 "Q9" H 8150 3650 50  0000 L CNN
F 1 "BC807-40" H 8150 3550 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8150 3700 50  0001 C CNN
F 3 "" H 7950 3600 50  0001 C CNN
	1    7950 3600
	0    -1   1    0   
$EndComp
Wire Wire Line
	7950 3400 7950 2250
Wire Wire Line
	7750 3700 6250 3700
Text HLabel 9000 3700 2    60   Output ~ 0
BusOut
Wire Wire Line
	9000 3700 8150 3700
Text HLabel 2350 2100 0    60   Input ~ 0
TTLInLow
$Comp
L R R19
U 1 1 5B93D815
P 2750 2100
F 0 "R19" V 2830 2100 50  0000 C CNN
F 1 "10k" V 2750 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2680 2100 50  0001 C CNN
F 3 "" H 2750 2100 50  0001 C CNN
	1    2750 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 2100 2600 2100
$Comp
L Q_NPN_BEC Q6
U 1 1 5B93D81C
P 3300 2100
F 0 "Q6" H 3500 2150 50  0000 L CNN
F 1 "BC847C" H 3500 2050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3500 2200 50  0001 C CNN
F 3 "" H 3300 2100 50  0001 C CNN
	1    3300 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2100 2900 2100
$Comp
L R R20
U 1 1 5B93D823
P 3400 1650
F 0 "R20" V 3480 1650 50  0000 C CNN
F 1 "100k" V 3400 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3330 1650 50  0001 C CNN
F 3 "" H 3400 1650 50  0001 C CNN
	1    3400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1900 3400 1800
Text HLabel 3400 1200 1    60   Input ~ 0
32V
Wire Wire Line
	3400 1200 3400 1500
Text HLabel 3400 2650 3    60   Input ~ 0
GND
Wire Wire Line
	3400 2650 3400 2300
$Comp
L R R21
U 1 1 5B93D82E
P 4000 2100
F 0 "R21" V 4080 2100 50  0000 C CNN
F 1 "10k" V 4000 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3930 2100 50  0001 C CNN
F 3 "" H 4000 2100 50  0001 C CNN
	1    4000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1850 4000 1850
Wire Wire Line
	4000 1850 4000 1950
Connection ~ 3400 1850
Text HLabel 2300 3700 0    60   Input ~ 0
12V
$Comp
L Q_PNP_BEC Q7
U 1 1 5B93D838
P 4000 3600
F 0 "Q7" H 4200 3650 50  0000 L CNN
F 1 "BC807-40" H 4200 3550 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4200 3700 50  0001 C CNN
F 3 "" H 4000 3600 50  0001 C CNN
	1    4000 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 3400 4000 2250
Wire Wire Line
	3800 3700 2300 3700
Text HLabel 5050 3700 2    60   Output ~ 0
BusOut
Wire Wire Line
	5050 3700 4200 3700
$EndSCHEMATC
