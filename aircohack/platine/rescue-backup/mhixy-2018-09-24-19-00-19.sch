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
Sheet 1 7
Title "MHI Bus to USB Interface"
Date "2018-09-08"
Rev "F3B1-3"
Comp "exablue GmbH"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "MHI Bus to USB interface. Top-level diagram."
$EndDescr
$Sheet
S 2400 3700 1300 1050
U 5B92B77C
F0 "InputConverter" 60
F1 "InputConverter.sch" 60
F2 "BusIn" I L 2400 4200 60 
F3 "GND" I L 2400 4650 60 
F4 "TTLOutLow" O R 3700 4400 60 
F5 "TTLOutHigh" O R 3700 4250 60 
F6 "5V" I L 2400 3800 60 
$EndSheet
$Sheet
S 2400 2150 1300 1050
U 5B9384DD
F0 "InputVoltageFilter" 60
F1 "InputVoltageFilter.sch" 60
F2 "BusIn" I L 2400 2550 60 
F3 "GND" I L 2400 2750 60 
F4 "17V" O R 3700 2300 60 
$EndSheet
$Sheet
S 4300 2150 1300 1050
U 5B939894
F0 "ChargePump" 60
F1 "ChargePump.sch" 60
F2 "17V" I L 4300 2300 60 
F3 "GND" I L 4300 3050 60 
F4 "CLK" I L 4300 2600 60 
F5 "32V" I R 5600 2700 60 
$EndSheet
$Sheet
S 6200 2150 1300 1050
U 5B93AA05
F0 "Generators" 60
F1 "Generators.sch" 60
F2 "17V" I L 6200 2300 60 
F3 "GND" I L 6200 3050 60 
F4 "12V" O R 7500 2550 60 
F5 "32V" I L 6200 2700 60 
F6 "22V" O R 7500 2400 60 
$EndSheet
$Sheet
S 8100 2150 1300 1050
U 5B93C199
F0 "OutputDriver" 60
F1 "OutputDriver.sch" 60
F2 "TTLInHigh" I L 8100 2900 60 
F3 "32V" I L 8100 2250 60 
F4 "GND" I L 8100 3100 60 
F5 "22V" I L 8100 2400 60 
F6 "BusOut" O R 9400 2600 60 
F7 "TTLInLow" I L 8100 2750 60 
F8 "12V" I L 8100 2550 60 
$EndSheet
$Sheet
S 6200 3700 1300 1050
U 5B9416F9
F0 "Controller" 60
F1 "Controller.sch" 60
F2 "CLK" O R 7500 4000 60 
F3 "RXHI" I L 6200 4250 60 
F4 "RXLO" I L 6200 4400 60 
F5 "TXLO" O R 7500 4200 60 
F6 "TXHI" O R 7500 4350 60 
F7 "VIN" I L 6200 3950 60 
F8 "GND" I L 6200 4650 60 
F9 "5V" O R 7500 3850 60 
$EndSheet
$Comp
L Screw_Terminal_1x02 J1
U 1 1 5B95881A
P 1950 2650
F 0 "J1" H 1950 2900 50  0000 C TNN
F 1 "MHI Bus" V 1800 2650 50  0000 C TNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_WAGO-804_RM5mm_2pol" H 1950 2425 50  0001 C CNN
F 3 "" H 1925 2650 50  0001 C CNN
	1    1950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2750 2400 2750
Wire Wire Line
	2150 2550 2400 2550
Wire Wire Line
	2200 2550 2200 4200
Wire Wire Line
	2200 4200 2400 4200
Connection ~ 2200 2550
Wire Wire Line
	2250 2750 2250 4950
Wire Wire Line
	2250 4650 2400 4650
Connection ~ 2250 2750
Wire Wire Line
	7500 2400 8100 2400
Wire Wire Line
	7500 2550 8100 2550
Wire Wire Line
	4150 3400 4150 3050
Wire Wire Line
	4150 3050 4300 3050
Connection ~ 2250 3400
Wire Wire Line
	6050 3400 6050 3050
Wire Wire Line
	6050 3050 6200 3050
Connection ~ 4150 3400
Wire Wire Line
	7850 3400 7850 3100
Wire Wire Line
	7850 3100 8100 3100
Connection ~ 6050 3400
Connection ~ 7850 3400
Wire Wire Line
	3700 2300 4300 2300
Wire Wire Line
	4150 2300 4150 1950
Wire Wire Line
	4150 1950 6050 1950
Wire Wire Line
	6050 1950 6050 2300
Wire Wire Line
	6050 2300 6200 2300
Connection ~ 4150 2300
Wire Wire Line
	5600 2700 6200 2700
Wire Wire Line
	5850 2700 5950 2700
Wire Wire Line
	5950 2700 5950 2000
Wire Wire Line
	5950 2000 7750 2000
Wire Wire Line
	7750 2000 7750 2250
Wire Wire Line
	7750 2250 8100 2250
Connection ~ 5850 2700
Wire Wire Line
	2250 3400 7850 3400
Wire Wire Line
	7500 3850 7650 3850
Wire Wire Line
	7650 3850 7650 3550
Wire Wire Line
	7650 3550 2300 3550
Wire Wire Line
	2300 3550 2300 3800
Wire Wire Line
	2300 3800 2400 3800
Wire Wire Line
	7750 2550 7750 3500
Wire Wire Line
	7750 3500 6000 3500
Wire Wire Line
	6000 3500 6000 3950
Wire Wire Line
	6000 3950 6200 3950
Connection ~ 7750 2550
Wire Wire Line
	7500 4000 9800 4000
Wire Wire Line
	9800 4000 9800 1750
Wire Wire Line
	9800 1750 3950 1750
Wire Wire Line
	3950 1750 3950 2600
Wire Wire Line
	3950 2600 4300 2600
Wire Wire Line
	7500 4200 7900 4200
Wire Wire Line
	7900 4200 7900 2750
Wire Wire Line
	7900 2750 8100 2750
Wire Wire Line
	7500 4350 8000 4350
Wire Wire Line
	8000 4350 8000 2900
Wire Wire Line
	8000 2900 8100 2900
Wire Wire Line
	2250 4950 5850 4950
Wire Wire Line
	5850 4950 5850 4650
Wire Wire Line
	5850 4650 6200 4650
Connection ~ 2250 4650
Wire Wire Line
	6200 4400 3700 4400
Wire Wire Line
	3700 4250 6200 4250
$EndSCHEMATC
