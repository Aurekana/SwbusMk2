EESchema Schematic File Version 4
EELAYER 30 0
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
L Mainboard:DRV8874_MOT_CTRL U?
U 1 1 6344E796
P 5350 3500
F 0 "U?" H 4750 4200 50  0000 C CNN
F 1 "DRV8874_MOT_CTRL" H 4800 4050 50  0000 C CNN
F 2 "" H 5350 3500 50  0001 C CNN
F 3 "" H 5350 3500 50  0001 C CNN
	1    5350 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 63450BD4
P 5350 2900
F 0 "#PWR?" H 5350 2750 50  0001 C CNN
F 1 "+12V" H 5365 3073 50  0000 C CNN
F 2 "" H 5350 2900 50  0001 C CNN
F 3 "" H 5350 2900 50  0001 C CNN
	1    5350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2900 5350 3000
$Comp
L power:GND #PWR?
U 1 1 6345191B
P 5200 4400
F 0 "#PWR?" H 5200 4150 50  0001 C CNN
F 1 "GND" H 5205 4227 50  0000 C CNN
F 2 "" H 5200 4400 50  0001 C CNN
F 3 "" H 5200 4400 50  0001 C CNN
	1    5200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4400 5200 4350
Wire Wire Line
	5300 4300 5300 4350
Wire Wire Line
	5300 4350 5200 4350
Connection ~ 5200 4350
Wire Wire Line
	5200 4350 5200 4300
Text GLabel 4700 3250 0    50   Input ~ 0
PWM1
Text GLabel 4700 3350 0    50   Input ~ 0
PWM2
Text GLabel 4700 3550 0    50   Input ~ 0
PMODE
Text GLabel 4700 3650 0    50   Input ~ 0
nSLEEP
Text GLabel 5850 3650 2    50   Input ~ 0
MOT1
Text GLabel 5850 3750 2    50   Input ~ 0
MOT2
Text GLabel 5850 3950 2    50   Input ~ 0
nFAULT
Text GLabel 4700 3850 0    50   Input ~ 0
LIM
Wire Wire Line
	4700 3250 4800 3250
Wire Wire Line
	4700 3350 4800 3350
Wire Wire Line
	4700 3550 4800 3550
Wire Wire Line
	4700 3650 4800 3650
Wire Wire Line
	4700 3850 4800 3850
Wire Wire Line
	5750 3950 5850 3950
Wire Wire Line
	5750 3750 5850 3750
Wire Wire Line
	5750 3650 5850 3650
Text GLabel 5850 3200 2    50   Input ~ 0
VIN
Wire Wire Line
	5850 3200 5750 3200
Text GLabel 5850 3350 2    50   Input ~ 0
VREF
Wire Wire Line
	5750 3350 5850 3350
Text GLabel 4700 3950 0    50   Input ~ 0
CS
Wire Wire Line
	4700 3950 4800 3950
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 634586EF
P 8400 1550
F 0 "J?" H 8480 1542 50  0000 L CNN
F 1 "Bat_Conn" H 8480 1451 50  0000 L CNN
F 2 "" H 8400 1550 50  0001 C CNN
F 3 "~" H 8400 1550 50  0001 C CNN
	1    8400 1550
	1    0    0    -1  
$EndComp
Text GLabel 8100 1550 0    50   Input ~ 0
BAT
$Comp
L power:GND #PWR?
U 1 1 63459D2C
P 8100 1750
F 0 "#PWR?" H 8100 1500 50  0001 C CNN
F 1 "GND" H 8105 1577 50  0000 C CNN
F 2 "" H 8100 1750 50  0001 C CNN
F 3 "" H 8100 1750 50  0001 C CNN
	1    8100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1650 8100 1650
Wire Wire Line
	8100 1650 8100 1750
Wire Wire Line
	8200 1550 8100 1550
$Comp
L Device:Fuse F?
U 1 1 6345B0EC
P 8200 1100
F 0 "F?" V 8003 1100 50  0000 C CNN
F 1 "Fuse" V 8094 1100 50  0000 C CNN
F 2 "" V 8130 1100 50  0001 C CNN
F 3 "~" H 8200 1100 50  0001 C CNN
	1    8200 1100
	0    1    1    0   
$EndComp
Text GLabel 8450 1100 2    50   Input ~ 0
BAT
Wire Wire Line
	8450 1100 8350 1100
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 6345D7FF
P 2550 1250
F 0 "J?" H 2468 925 50  0000 C CNN
F 1 "DC_Motor" H 2468 1016 50  0000 C CNN
F 2 "" H 2550 1250 50  0001 C CNN
F 3 "~" H 2550 1250 50  0001 C CNN
	1    2550 1250
	-1   0    0    1   
$EndComp
Text GLabel 2850 1250 2    50   Input ~ 0
MOT1
Text GLabel 2850 1150 2    50   Input ~ 0
MOT2
Wire Wire Line
	2850 1150 2750 1150
Wire Wire Line
	2850 1250 2750 1250
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 63461034
P 2550 1900
F 0 "J?" H 2468 1575 50  0000 C CNN
F 1 "Servo_01" H 2468 1666 50  0000 C CNN
F 2 "" H 2550 1900 50  0001 C CNN
F 3 "~" H 2550 1900 50  0001 C CNN
	1    2550 1900
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 63461979
P 2550 2500
F 0 "J?" H 2468 2175 50  0000 C CNN
F 1 "Servo_02" H 2468 2266 50  0000 C CNN
F 2 "" H 2550 2500 50  0001 C CNN
F 3 "~" H 2550 2500 50  0001 C CNN
	1    2550 2500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 63462009
P 2550 3100
F 0 "J?" H 2468 2775 50  0000 C CNN
F 1 "Servo_03" H 2468 2866 50  0000 C CNN
F 2 "" H 2550 3100 50  0001 C CNN
F 3 "~" H 2550 3100 50  0001 C CNN
	1    2550 3100
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 63463FA7
P 2550 3700
F 0 "J?" H 2468 3375 50  0000 C CNN
F 1 "Neo_01" H 2468 3466 50  0000 C CNN
F 2 "" H 2550 3700 50  0001 C CNN
F 3 "~" H 2550 3700 50  0001 C CNN
	1    2550 3700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 63464777
P 2550 4300
F 0 "J?" H 2468 3975 50  0000 C CNN
F 1 "Neo_02" H 2468 4066 50  0000 C CNN
F 2 "" H 2550 4300 50  0001 C CNN
F 3 "~" H 2550 4300 50  0001 C CNN
	1    2550 4300
	-1   0    0    1   
$EndComp
$Comp
L Mainboard:Seeed_XIAO U?
U 1 1 63468C2D
P 8250 3400
F 0 "U?" H 8450 3815 50  0000 C CNN
F 1 "Seeed_XIAO" H 8450 3724 50  0000 C CNN
F 2 "" H 8250 3400 50  0001 C CNN
F 3 "" H 8250 3400 50  0001 C CNN
	1    8250 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63469FBF
P 7800 3750
F 0 "#PWR?" H 7800 3500 50  0001 C CNN
F 1 "GND" H 7805 3577 50  0000 C CNN
F 2 "" H 7800 3750 50  0001 C CNN
F 3 "" H 7800 3750 50  0001 C CNN
	1    7800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3550 7800 3550
Wire Wire Line
	7800 3550 7800 3750
$Comp
L Device:D_Schottky D?
U 1 1 6346B3DE
P 7800 2950
F 0 "D?" H 7750 2750 50  0000 L CNN
F 1 "D_Schottky" H 7600 2850 50  0000 L CNN
F 2 "" H 7800 2950 50  0001 C CNN
F 3 "~" H 7800 2950 50  0001 C CNN
	1    7800 2950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6346F9D0
P 7800 2700
F 0 "#PWR?" H 7800 2550 50  0001 C CNN
F 1 "+5V" H 7815 2873 50  0000 C CNN
F 2 "" H 7800 2700 50  0001 C CNN
F 3 "" H 7800 2700 50  0001 C CNN
	1    7800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2700 7800 2800
Wire Wire Line
	7950 3250 7800 3250
Wire Wire Line
	7800 3250 7800 3100
Text GLabel 9050 3550 2    50   Input ~ 0
PWM1
Text GLabel 9050 3650 2    50   Input ~ 0
PWM2
Wire Wire Line
	9050 3550 8950 3550
Wire Wire Line
	9050 3650 8950 3650
$Comp
L power:GND #PWR?
U 1 1 63473702
P 2850 4500
F 0 "#PWR?" H 2850 4250 50  0001 C CNN
F 1 "GND" H 2855 4327 50  0000 C CNN
F 2 "" H 2850 4500 50  0001 C CNN
F 3 "" H 2850 4500 50  0001 C CNN
	1    2850 4500
	1    0    0    -1  
$EndComp
Text GLabel 3050 1800 2    50   Input ~ 0
SERV_01
Text GLabel 3050 2400 2    50   Input ~ 0
SERV_02
Text GLabel 3050 3000 2    50   Input ~ 0
SERV_03
Wire Wire Line
	2750 2000 2850 2000
Wire Wire Line
	2850 2000 2850 2600
Wire Wire Line
	2750 2600 2850 2600
Connection ~ 2850 2600
Wire Wire Line
	2850 2600 2850 3200
Wire Wire Line
	2750 3200 2850 3200
Connection ~ 2850 3200
Wire Wire Line
	2850 3200 2850 3800
Wire Wire Line
	2750 1800 3050 1800
Wire Wire Line
	2750 2400 3050 2400
Wire Wire Line
	2750 3000 3050 3000
Text GLabel 3050 1600 2    50   Input ~ 0
V_SERV
Wire Wire Line
	2750 1900 2950 1900
Wire Wire Line
	2950 1900 2950 1600
Wire Wire Line
	2950 1600 3050 1600
Wire Wire Line
	2750 2500 2950 2500
Wire Wire Line
	2950 2500 2950 1900
Connection ~ 2950 1900
Wire Wire Line
	2750 3100 2950 3100
Wire Wire Line
	2950 3100 2950 2500
Connection ~ 2950 2500
Wire Wire Line
	2750 3800 2850 3800
Connection ~ 2850 3800
Wire Wire Line
	2850 3800 2850 4400
Wire Wire Line
	2750 4400 2850 4400
Connection ~ 2850 4400
Wire Wire Line
	2850 4400 2850 4500
Text GLabel 3050 3400 2    50   Input ~ 0
V_NEO
Text GLabel 3050 3600 2    50   Input ~ 0
NEO_01
Text GLabel 3050 4200 2    50   Input ~ 0
NEO_02
Wire Wire Line
	3050 4200 2750 4200
Wire Wire Line
	3050 3600 2750 3600
Wire Wire Line
	2750 3700 2950 3700
Wire Wire Line
	2950 3700 2950 3400
Wire Wire Line
	2950 3400 3050 3400
Wire Wire Line
	2750 4300 2950 4300
Wire Wire Line
	2950 4300 2950 3700
Connection ~ 2950 3700
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 63492BBC
P 4200 1900
F 0 "J?" H 4118 1575 50  0000 C CNN
F 1 "RLOAD_POT" H 4118 1666 50  0000 C CNN
F 2 "" H 4200 1900 50  0001 C CNN
F 3 "~" H 4200 1900 50  0001 C CNN
	1    4200 1900
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 63494D59
P 5350 1900
F 0 "J?" H 5268 1575 50  0000 C CNN
F 1 "HNDL_POT" H 5268 1666 50  0000 C CNN
F 2 "" H 5350 1900 50  0001 C CNN
F 3 "~" H 5350 1900 50  0001 C CNN
	1    5350 1900
	-1   0    0    1   
$EndComp
Text GLabel 9800 3650 2    50   Input ~ 0
SERV_01
Text GLabel 9800 3750 2    50   Input ~ 0
SERV_02
Text GLabel 9800 3850 2    50   Input ~ 0
SERV_03
Text GLabel 9800 4050 2    50   Input ~ 0
NEO_01
Text GLabel 9800 4150 2    50   Input ~ 0
NEO_02
Text GLabel 9800 4350 2    50   Input ~ 0
nSLEEP
Text GLabel 9800 4450 2    50   Input ~ 0
PMODE
Text GLabel 4050 1150 2    50   Input ~ 0
nFAULT
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 6349CB68
P 3750 1250
F 0 "J?" H 3668 925 50  0000 C CNN
F 1 "DIAG" H 3668 1016 50  0000 C CNN
F 2 "" H 3750 1250 50  0001 C CNN
F 3 "~" H 3750 1250 50  0001 C CNN
	1    3750 1250
	-1   0    0    1   
$EndComp
Text GLabel 4050 1250 2    50   Input ~ 0
LIM
Text GLabel 4050 1350 2    50   Input ~ 0
CS
Wire Wire Line
	4050 1150 3950 1150
Wire Wire Line
	4050 1250 3950 1250
Wire Wire Line
	4050 1350 3950 1350
$Comp
L power:+3V3 #PWR?
U 1 1 634A41B6
P 4650 1600
F 0 "#PWR?" H 4650 1450 50  0001 C CNN
F 1 "+3V3" H 4665 1773 50  0000 C CNN
F 2 "" H 4650 1600 50  0001 C CNN
F 3 "" H 4650 1600 50  0001 C CNN
	1    4650 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 634A4F6B
P 5800 1600
F 0 "#PWR?" H 5800 1450 50  0001 C CNN
F 1 "+3V3" H 5815 1773 50  0000 C CNN
F 2 "" H 5800 1600 50  0001 C CNN
F 3 "" H 5800 1600 50  0001 C CNN
	1    5800 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 634A58EF
P 4500 2100
F 0 "#PWR?" H 4500 1850 50  0001 C CNN
F 1 "GND" H 4505 1927 50  0000 C CNN
F 2 "" H 4500 2100 50  0001 C CNN
F 3 "" H 4500 2100 50  0001 C CNN
	1    4500 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 634A6509
P 5650 2100
F 0 "#PWR?" H 5650 1850 50  0001 C CNN
F 1 "GND" H 5655 1927 50  0000 C CNN
F 2 "" H 5650 2100 50  0001 C CNN
F 3 "" H 5650 2100 50  0001 C CNN
	1    5650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2100 5650 2000
Wire Wire Line
	5650 2000 5550 2000
Wire Wire Line
	4500 2100 4500 2000
Wire Wire Line
	4500 2000 4400 2000
Wire Wire Line
	4400 1800 4650 1800
Wire Wire Line
	4650 1800 4650 1600
Wire Wire Line
	5550 1800 5800 1800
Wire Wire Line
	5800 1800 5800 1600
Text GLabel 4750 1900 2    50   Input ~ 0
RLOAD
Text GLabel 5900 1900 2    50   Input ~ 0
HNDL
Wire Wire Line
	5900 1900 5550 1900
Wire Wire Line
	4750 1900 4400 1900
Text GLabel 9050 3250 2    50   Input ~ 0
HNDL
Text GLabel 9050 3350 2    50   Input ~ 0
RLOAD
Wire Wire Line
	9050 3250 8950 3250
Wire Wire Line
	9050 3350 8950 3350
$Comp
L power:+3V3 #PWR?
U 1 1 634BB649
P 7400 2700
F 0 "#PWR?" H 7400 2550 50  0001 C CNN
F 1 "+3V3" H 7415 2873 50  0000 C CNN
F 2 "" H 7400 2700 50  0001 C CNN
F 3 "" H 7400 2700 50  0001 C CNN
	1    7400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3400 7400 3400
Wire Wire Line
	7400 3400 7400 2700
Text GLabel 7950 1100 0    50   Input ~ 0
V_BAT
Wire Wire Line
	8050 1100 7950 1100
$EndSCHEMATC
