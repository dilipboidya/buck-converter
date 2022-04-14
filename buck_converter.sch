EESchema Schematic File Version 2
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:buck_converter-cache
EELAYER 25 0
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
$Comp
L eSim_Diode D1
U 1 1 6256DB43
P 4400 3300
F 0 "D1" H 4400 3400 50  0000 C CNN
F 1 "eSim_Diode" H 4400 3200 50  0000 C CNN
F 2 "" H 4400 3300 60  0000 C CNN
F 3 "" H 4400 3300 60  0000 C CNN
	1    4400 3300
	0    -1   -1   0   
$EndComp
$Comp
L inductor L1
U 1 1 6256DB92
P 3000 3250
F 0 "L1" H 4950 3750 50  0000 C CNN
F 1 "1" H 4950 3900 50  0000 C CNN
F 2 "" V 4950 3800 60  0000 C CNN
F 3 "" V 4950 3800 60  0000 C CNN
	1    3000 3250
	1    0    0    -1  
$EndComp
$Comp
L capacitor C1
U 1 1 6256DBFD
P 5750 3250
F 0 "C1" H 5775 3350 50  0000 L CNN
F 1 "10n" H 5775 3150 50  0000 L CNN
F 2 "" H 5788 3100 30  0000 C CNN
F 3 "" H 5750 3250 60  0000 C CNN
	1    5750 3250
	1    0    0    -1  
$EndComp
$Comp
L resistor R1
U 1 1 6256DC26
P 6300 3200
F 0 "R1" H 6350 3330 50  0000 C CNN
F 1 "10k" H 6350 3150 50  0000 C CNN
F 2 "" H 6350 3180 30  0000 C CNN
F 3 "" V 6350 3250 30  0000 C CNN
	1    6300 3200
	0    1    1    0   
$EndComp
$Comp
L eSim_NPN Q1
U 1 1 6256DC49
P 3750 2600
F 0 "Q1" H 3650 2650 50  0000 R CNN
F 1 "eSim_NPN" H 3700 2750 50  0000 R CNN
F 2 "" H 3950 2700 29  0000 C CNN
F 3 "" H 3750 2600 60  0000 C CNN
	1    3750 2600
	0    -1   1    0   
$EndComp
$Comp
L DC v2
U 1 1 6256DC70
P 3050 3250
F 0 "v2" H 2850 3350 60  0000 C CNN
F 1 "DC" H 2850 3200 60  0000 C CNN
F 2 "R1" H 2750 3250 60  0000 C CNN
F 3 "" H 3050 3250 60  0000 C CNN
	1    3050 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 6256DC9B
P 4400 3900
F 0 "#PWR01" H 4400 3650 50  0001 C CNN
F 1 "GND" H 4400 3750 50  0000 C CNN
F 2 "" H 4400 3900 50  0001 C CNN
F 3 "" H 4400 3900 50  0001 C CNN
	1    4400 3900
	1    0    0    -1  
$EndComp
$Comp
L pulse v1
U 1 1 6256DCBB
P 2250 2850
F 0 "v1" H 2050 2950 60  0000 C CNN
F 1 "pulse" H 2050 2800 60  0000 C CNN
F 2 "R1" H 1950 2850 60  0000 C CNN
F 3 "" H 2250 2850 60  0000 C CNN
	1    2250 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 6256DCFC
P 2250 3300
F 0 "#PWR02" H 2250 3050 50  0001 C CNN
F 1 "GND" H 2250 3150 50  0000 C CNN
F 2 "" H 2250 3300 50  0001 C CNN
F 3 "" H 2250 3300 50  0001 C CNN
	1    2250 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2350 3050 2800
Wire Wire Line
	2850 2700 3550 2700
Wire Wire Line
	3950 2700 4650 2700
Wire Wire Line
	6350 2600 6350 3100
Wire Wire Line
	6350 3400 6350 3800
Wire Wire Line
	6350 3800 3050 3800
Wire Wire Line
	3050 3800 3050 3700
Wire Wire Line
	4400 3450 4400 3900
Connection ~ 4400 3800
Wire Wire Line
	4400 3150 4400 2700
Connection ~ 4400 2700
Wire Wire Line
	5750 2700 5750 3100
Connection ~ 5750 2700
Wire Wire Line
	5750 3400 5750 3800
Connection ~ 5750 3800
Wire Wire Line
	2050 2400 3750 2400
Text GLabel 6500 2700 2    60   Output ~ 0
Vout
Text GLabel 2050 2400 0    60   Input ~ 0
pwm
Text GLabel 2850 2700 0    60   Input ~ 0
Vin
$Comp
L plot_v1 U3
U 1 1 6256DEFD
P 6350 2800
F 0 "U3" H 6350 3300 60  0000 C CNN
F 1 "plot_v1" H 6550 3150 60  0000 C CNN
F 2 "" H 6350 2800 60  0000 C CNN
F 3 "" H 6350 2800 60  0000 C CNN
	1    6350 2800
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U2
U 1 1 6256DF38
P 3050 2550
F 0 "U2" H 3050 3050 60  0000 C CNN
F 1 "plot_v1" H 3250 2900 60  0000 C CNN
F 2 "" H 3050 2550 60  0000 C CNN
F 3 "" H 3050 2550 60  0000 C CNN
	1    3050 2550
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U1
U 1 1 6256DF7F
P 2250 2550
F 0 "U1" H 2250 3050 60  0000 C CNN
F 1 "plot_v1" H 2450 2900 60  0000 C CNN
F 2 "" H 2250 2550 60  0000 C CNN
F 3 "" H 2250 2550 60  0000 C CNN
	1    2250 2550
	1    0    0    -1  
$EndComp
Connection ~ 3050 2700
Wire Wire Line
	2250 2400 2250 2350
Connection ~ 2250 2400
Wire Wire Line
	5250 2700 6500 2700
Connection ~ 6350 2700
$EndSCHEMATC
