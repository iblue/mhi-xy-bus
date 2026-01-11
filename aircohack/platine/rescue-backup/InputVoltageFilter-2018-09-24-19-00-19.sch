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
Sheet 3 7
Title "MHI Bus to USB Interface"
Date "2018-09-08"
Rev "F3B1-3"
Comp "exablue GmbH"
Comment1 ""
Comment2 ""
Comment3 "limited to 120 mA, buffered by a large cap"
Comment4 "Removes data signals incoming from MHI Bus and generates an unstabilized 17V source,"
$EndDescr
Text HLabel 4350 2700 0    60   Input ~ 0
BusIn
Text HLabel 4300 4000 0    60   Input ~ 0
GND
$Comp
L R R8
U 1 1 5B9384FD
P 4900 2700
F 0 "R8" V 4980 2700 50  0000 C CNN
F 1 "1" V 4900 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4830 2700 50  0001 C CNN
F 3 "" H 4900 2700 50  0001 C CNN
	1    4900 2700
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5B93853E
P 5250 2850
F 0 "R9" V 5330 2850 50  0000 C CNN
F 1 "2k2" V 5250 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5180 2850 50  0001 C CNN
F 3 "" H 5250 2850 50  0001 C CNN
	1    5250 2850
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5B938567
P 5750 2850
F 0 "R10" V 5830 2850 50  0000 C CNN
F 1 "22k" V 5750 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5680 2850 50  0001 C CNN
F 3 "" H 5750 2850 50  0001 C CNN
	1    5750 2850
	1    0    0    -1  
$EndComp
$Comp
L Q_PNP_BEC Q1
U 1 1 5B938599
P 5250 3300
F 0 "Q1" H 5250 3500 50  0000 R CNN
F 1 "BC857A" H 5250 3100 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5450 3400 50  0001 C CNN
F 3 "" H 5250 3300 50  0001 C CNN
	1    5250 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3000 5250 3100
Wire Wire Line
	4350 2700 4750 2700
Wire Wire Line
	4600 2700 4600 3400
Wire Wire Line
	4600 3400 5050 3400
Connection ~ 4600 2700
Connection ~ 5250 2700
Wire Wire Line
	5450 3400 6250 3400
Wire Wire Line
	5750 3400 5750 3000
$Comp
L Q_PNP_BEC Q2
U 1 1 5B93862E
P 6250 2800
F 0 "Q2" H 6200 2950 50  0000 R CNN
F 1 "BC807-40" H 6200 2650 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6450 2900 50  0001 C CNN
F 3 "" H 6250 2800 50  0001 C CNN
	1    6250 2800
	0    1    -1   0   
$EndComp
Connection ~ 5750 2700
Wire Wire Line
	6250 3000 6250 3550
Connection ~ 5750 3400
$Comp
L R R11
U 1 1 5B938778
P 6250 3700
F 0 "R11" V 6330 3700 50  0000 C CNN
F 1 "220k" V 6250 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6180 3700 50  0001 C CNN
F 3 "" H 6250 3700 50  0001 C CNN
	1    6250 3700
	1    0    0    -1  
$EndComp
Connection ~ 6250 3400
Wire Wire Line
	4300 4000 7000 4000
Wire Wire Line
	6250 4000 6250 3850
Text HLabel 7300 2700 2    60   Output ~ 0
17V
Wire Wire Line
	7300 2700 6450 2700
$Comp
L CP C2
U 1 1 5B938855
P 7000 3350
F 0 "C2" H 7025 3450 50  0000 L CNN
F 1 "4700u" H 7025 3250 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D18.0mm_P7.50mm" H 7038 3200 50  0001 C CNN
F 3 "" H 7000 3350 50  0001 C CNN
	1    7000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3200 7000 2700
Connection ~ 7000 2700
Wire Wire Line
	7000 4000 7000 3500
Connection ~ 6250 4000
Wire Wire Line
	5050 2700 6050 2700
$EndSCHEMATC
