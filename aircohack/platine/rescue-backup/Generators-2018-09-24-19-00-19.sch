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
Sheet 5 7
Title "MHI Bus to USB Interface"
Date "2018-09-08"
Rev "F3B1-3"
Comp "exablue GmbH"
Comment1 ""
Comment2 ""
Comment3 "bursts."
Comment4 "A stabilized and buffered 12V / 22V source, which sources up to 1A for repeated 50us"
$EndDescr
Text HLabel 2550 4050 0    60   Input ~ 0
17V
Text HLabel 2550 4850 0    60   Input ~ 0
GND
Text HLabel 5200 4400 2    60   Output ~ 0
12V
$Comp
L LM317EMP U3
U 1 1 5B93AA3D
P 3650 4100
F 0 "U3" H 3450 4300 50  0000 C CNN
F 1 "LM317M" H 3650 4300 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3650 4200 50  0001 C CIN
F 3 "" H 3650 4100 50  0001 C CNN
	1    3650 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4050 3250 4050
$Comp
L R R17
U 1 1 5B93AA8D
P 4400 4200
F 0 "R17" V 4480 4200 50  0000 C CNN
F 1 "220" V 4400 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4330 4200 50  0001 C CNN
F 3 "" H 4400 4200 50  0001 C CNN
	1    4400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4050 4400 4050
$Comp
L R R18
U 1 1 5B93AB49
P 4400 4600
F 0 "R18" V 4480 4600 50  0000 C CNN
F 1 "1k8" V 4400 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4330 4600 50  0001 C CNN
F 3 "" H 4400 4600 50  0001 C CNN
	1    4400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4350 4400 4450
Wire Wire Line
	3650 4350 3650 4400
Wire Wire Line
	3650 4400 5200 4400
Connection ~ 4400 4400
Wire Wire Line
	2550 4850 4900 4850
Wire Wire Line
	4400 4850 4400 4750
$Comp
L CP C6
U 1 1 5B93AC03
P 4900 4600
F 0 "C6" H 4925 4700 50  0000 L CNN
F 1 "100u" H 4925 4500 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 4938 4450 50  0001 C CNN
F 3 "" H 4900 4600 50  0001 C CNN
	1    4900 4600
	1    0    0    -1  
$EndComp
Connection ~ 4400 4850
Wire Wire Line
	4900 4850 4900 4750
Wire Wire Line
	4900 4450 4900 4400
Connection ~ 4900 4400
Text HLabel 2500 1950 0    60   Input ~ 0
32V
Text HLabel 2500 2750 0    60   Input ~ 0
GND
Text HLabel 5150 2300 2    60   Output ~ 0
22V
$Comp
L LM317EMP U2
U 1 1 5B93B40F
P 3600 2000
F 0 "U2" H 3400 2200 50  0000 C CNN
F 1 "LM317M" H 3600 2200 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3600 2100 50  0001 C CIN
F 3 "" H 3600 2000 50  0001 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1950 3200 1950
$Comp
L R R15
U 1 1 5B93B416
P 4350 2100
F 0 "R15" V 4430 2100 50  0000 C CNN
F 1 "220" V 4350 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4280 2100 50  0001 C CNN
F 3 "" H 4350 2100 50  0001 C CNN
	1    4350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1950 4350 1950
$Comp
L D D2
U 1 1 5B93B41D
P 3600 1550
F 0 "D2" H 3600 1650 50  0000 C CNN
F 1 "BAT54" H 3600 1450 50  0000 C CNN
F 2 "Diodes_SMD:D_SOT-23_ANK" H 3600 1550 50  0001 C CNN
F 3 "" H 3600 1550 50  0001 C CNN
	1    3600 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1950 2950 1550
Wire Wire Line
	2950 1550 3450 1550
Connection ~ 2950 1950
Wire Wire Line
	3750 1550 4150 1550
Wire Wire Line
	4150 1550 4150 1950
Connection ~ 4150 1950
$Comp
L R R16
U 1 1 5B93B429
P 4350 2500
F 0 "R16" V 4430 2500 50  0000 C CNN
F 1 "3k9" V 4350 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4280 2500 50  0001 C CNN
F 3 "" H 4350 2500 50  0001 C CNN
	1    4350 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2250 4350 2350
Wire Wire Line
	3600 2250 3600 2300
Wire Wire Line
	3600 2300 5150 2300
Connection ~ 4350 2300
Wire Wire Line
	2500 2750 4850 2750
Wire Wire Line
	4350 2750 4350 2650
$Comp
L CP C5
U 1 1 5B93B435
P 4850 2500
F 0 "C5" H 4875 2600 50  0000 L CNN
F 1 "100u" H 4875 2400 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 4888 2350 50  0001 C CNN
F 3 "" H 4850 2500 50  0001 C CNN
	1    4850 2500
	1    0    0    -1  
$EndComp
Connection ~ 4350 2750
Wire Wire Line
	4850 2750 4850 2650
Wire Wire Line
	4850 2350 4850 2300
Connection ~ 4850 2300
$EndSCHEMATC
