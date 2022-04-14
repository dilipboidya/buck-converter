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
LIBS:Mixed_Signal_Based_Buck_Converter-cache
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
L eSim_NPN Q1
U 1 1 6256E5A0
P 7000 2600
F 0 "Q1" H 6900 2650 50  0000 R CNN
F 1 "eSim_NPN" H 6950 2750 50  0000 R CNN
F 2 "" H 7200 2700 29  0000 C CNN
F 3 "" H 7000 2600 60  0000 C CNN
	1    7000 2600
	0    -1   1    0   
$EndComp
$Comp
L inductor L1
U 1 1 6256E5E7
P 6350 3250
F 0 "L1" H 8300 3750 50  0000 C CNN
F 1 "1" H 8300 3900 50  0000 C CNN
F 2 "" V 8300 3800 60  0000 C CNN
F 3 "" V 8300 3800 60  0000 C CNN
	1    6350 3250
	1    0    0    -1  
$EndComp
$Comp
L eSim_Diode D1
U 1 1 6256E640
P 7650 3350
F 0 "D1" H 7650 3450 50  0000 C CNN
F 1 "eSim_Diode" H 7650 3250 50  0000 C CNN
F 2 "" H 7650 3350 60  0000 C CNN
F 3 "" H 7650 3350 60  0000 C CNN
	1    7650 3350
	0    -1   -1   0   
$EndComp
$Comp
L capacitor C1
U 1 1 6256E663
P 8900 3350
F 0 "C1" H 8925 3450 50  0000 L CNN
F 1 "10n" H 8925 3250 50  0000 L CNN
F 2 "" H 8938 3200 30  0000 C CNN
F 3 "" H 8900 3350 60  0000 C CNN
	1    8900 3350
	1    0    0    -1  
$EndComp
$Comp
L resistor R1
U 1 1 6256E690
P 9400 3300
F 0 "R1" H 9450 3430 50  0000 C CNN
F 1 "10k" H 9450 3250 50  0000 C CNN
F 2 "" H 9450 3280 30  0000 C CNN
F 3 "" V 9450 3350 30  0000 C CNN
	1    9400 3300
	0    1    1    0   
$EndComp
$Comp
L DC v2
U 1 1 6256E6B1
P 6350 3350
F 0 "v2" H 6150 3450 60  0000 C CNN
F 1 "DC" H 6150 3300 60  0000 C CNN
F 2 "R1" H 6050 3350 60  0000 C CNN
F 3 "" H 6350 3350 60  0000 C CNN
	1    6350 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 6256E6D2
P 7650 3950
F 0 "#PWR01" H 7650 3700 50  0001 C CNN
F 1 "GND" H 7650 3800 50  0000 C CNN
F 2 "" H 7650 3950 50  0001 C CNN
F 3 "" H 7650 3950 50  0001 C CNN
	1    7650 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3800 9450 3800
Wire Wire Line
	9450 3800 9450 3500
Wire Wire Line
	8900 3500 8900 3800
Connection ~ 8900 3800
Wire Wire Line
	7650 3500 7650 3950
Connection ~ 7650 3800
Wire Wire Line
	6350 2600 6350 2900
Wire Wire Line
	6150 2700 6800 2700
Wire Wire Line
	7200 2700 8000 2700
Wire Wire Line
	8600 2700 9550 2700
Wire Wire Line
	9450 2600 9450 3200
Wire Wire Line
	8900 3200 8900 2700
Connection ~ 8900 2700
Wire Wire Line
	7650 3200 7650 2700
Connection ~ 7650 2700
Text GLabel 9550 2700 2    60   Output ~ 0
Vout
Text GLabel 6150 2700 0    60   Input ~ 0
Vin
$Comp
L plot_v1 U6
U 1 1 6256E7A6
P 9450 2800
F 0 "U6" H 9450 3300 60  0000 C CNN
F 1 "plot_v1" H 9650 3150 60  0000 C CNN
F 2 "" H 9450 2800 60  0000 C CNN
F 3 "" H 9450 2800 60  0000 C CNN
	1    9450 2800
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U4
U 1 1 6256E80F
P 6350 2800
F 0 "U4" H 6350 3300 60  0000 C CNN
F 1 "plot_v1" H 6550 3150 60  0000 C CNN
F 2 "" H 6350 2800 60  0000 C CNN
F 3 "" H 6350 2800 60  0000 C CNN
	1    6350 2800
	1    0    0    -1  
$EndComp
Connection ~ 6350 2700
Connection ~ 9450 2700
Wire Wire Line
	9450 2700 9450 2750
$Comp
L pulse v1
U 1 1 6256EB01
P 3300 2950
F 0 "v1" H 3100 3050 60  0000 C CNN
F 1 "pulse" H 3100 2900 60  0000 C CNN
F 2 "R1" H 3000 2950 60  0000 C CNN
F 3 "" H 3300 2950 60  0000 C CNN
	1    3300 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 6256EB5E
P 3300 3400
F 0 "#PWR02" H 3300 3150 50  0001 C CNN
F 1 "GND" H 3300 3250 50  0000 C CNN
F 2 "" H 3300 3400 50  0001 C CNN
F 3 "" H 3300 3400 50  0001 C CNN
	1    3300 3400
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_1 U3
U 1 1 6256EB84
P 3900 2100
F 0 "U3" H 3900 2100 60  0000 C CNN
F 1 "adc_bridge_1" H 3900 2250 60  0000 C CNN
F 2 "" H 3900 2100 60  0000 C CNN
F 3 "" H 3900 2100 60  0000 C CNN
	1    3900 2100
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_1 U5
U 1 1 6256EBC1
P 6450 2100
F 0 "U5" H 6450 2100 60  0000 C CNN
F 1 "dac_bridge_1" H 6450 2250 60  0000 C CNN
F 2 "" H 6450 2100 60  0000 C CNN
F 3 "" H 6450 2100 60  0000 C CNN
	1    6450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2050 7000 2400
Wire Wire Line
	3300 2000 3300 2500
Text GLabel 3150 2050 0    60   Input ~ 0
clk
$Comp
L plot_v1 U2
U 1 1 6256F93A
P 3300 2200
F 0 "U2" H 3300 2700 60  0000 C CNN
F 1 "plot_v1" H 3500 2550 60  0000 C CNN
F 2 "" H 3300 2200 60  0000 C CNN
F 3 "" H 3300 2200 60  0000 C CNN
	1    3300 2200
	1    0    0    -1  
$EndComp
Connection ~ 3300 2050
Wire Wire Line
	3300 2050 3150 2050
$Comp
L pwm U1
U 1 1 62580BCB
P 2300 3950
F 0 "U1" H 5150 5750 60  0000 C CNN
F 1 "pwm" H 5150 5950 60  0000 C CNN
F 2 "" H 5150 5900 60  0000 C CNN
F 3 "" H 5150 5900 60  0000 C CNN
	1    2300 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
