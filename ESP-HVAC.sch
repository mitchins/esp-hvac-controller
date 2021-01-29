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
L Connector:RJ12 J1
U 1 1 601498EC
P 5250 2150
F 0 "J1" H 5307 2717 50  0000 C CNN
F 1 "RJ12" H 5307 2626 50  0000 C CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 5250 2175 50  0001 C CNN
F 3 "~" V 5250 2175 50  0001 C CNN
	1    5250 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 2050 4750 2050
Wire Wire Line
	4750 2050 4750 1950
Connection ~ 4750 1950
Wire Wire Line
	4750 1950 4850 1950
Wire Wire Line
	4850 2350 4750 2350
Wire Wire Line
	4750 2450 4850 2450
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 600F6E7B
P 2350 1050
F 0 "J2" H 2268 725 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2268 816 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 2350 1050 50  0001 C CNN
F 3 "~" H 2350 1050 50  0001 C CNN
	1    2350 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 2150 4850 2200
Connection ~ 4850 2200
Wire Wire Line
	4850 2200 4850 2250
Wire Wire Line
	2550 1050 3300 1050
$Comp
L Device:R R2
U 1 1 600FC16C
P 2500 3450
F 0 "R2" H 2570 3496 50  0000 L CNN
F 1 "1KR" H 2570 3405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2430 3450 50  0001 C CNN
F 3 "~" H 2500 3450 50  0001 C CNN
	1    2500 3450
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 600FDB99
P 2850 2200
F 0 "Q2" H 3041 2246 50  0000 L CNN
F 1 "BC547" H 3041 2155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 3050 2125 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 2850 2200 50  0001 L CNN
	1    2850 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ12 J3
U 1 1 60104AAE
P 5250 1300
F 0 "J3" H 5307 1867 50  0000 C CNN
F 1 "RJ12" H 5307 1776 50  0000 C CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 5250 1325 50  0001 C CNN
F 3 "~" V 5250 1325 50  0001 C CNN
	1    5250 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 1300 4850 1350
Connection ~ 4850 1350
Wire Wire Line
	4850 1350 4850 1400
$Comp
L Relay:G5Q-1 K2
U 1 1 60106BC3
P 3350 1550
F 0 "K2" H 3780 1596 50  0000 L CNN
F 1 "SRD-03VDC-SL-C" H 3780 1505 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 3800 1500 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 3350 1550 50  0001 L CNN
	1    3350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1050 3300 1850
Wire Wire Line
	3300 1850 3550 1850
$Comp
L Diode:1N4007 D1
U 1 1 60109B66
P 2700 1550
F 0 "D1" H 2700 1767 50  0000 C CNN
F 1 "1N4007" H 2700 1676 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2700 1375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2700 1550 50  0001 C CNN
	1    2700 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 1250 2700 1250
Wire Wire Line
	2700 1250 2700 1400
Wire Wire Line
	3150 1850 2950 1850
Wire Wire Line
	2700 1850 2700 1700
Wire Wire Line
	4850 1100 4850 1200
Wire Wire Line
	4850 1500 4850 1600
Wire Wire Line
	3450 1250 3450 1100
Connection ~ 4850 1100
Wire Wire Line
	3650 1250 4400 1250
Wire Wire Line
	4400 1250 4400 1600
Wire Wire Line
	4400 1600 4750 1600
Connection ~ 4850 1600
Wire Wire Line
	5700 950  5700 1350
Wire Wire Line
	5700 2200 4850 2200
Wire Wire Line
	4850 1350 5700 1350
Connection ~ 5700 1350
Wire Wire Line
	5700 1350 5700 2200
Wire Wire Line
	2550 950  5700 950 
Wire Wire Line
	2700 1250 1900 1250
Connection ~ 2700 1250
Wire Wire Line
	2950 2000 2950 1850
Connection ~ 2950 1850
Wire Wire Line
	2950 1850 2700 1850
Wire Wire Line
	2650 2200 2650 3450
$Comp
L MCU_Module:WeMos_D1_mini U1
U 1 1 60143495
P 1800 3350
F 0 "U1" H 1800 2461 50  0000 C CNN
F 1 "WeMos_D1_mini" H 1800 2370 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 1800 2200 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H -50 2200 50  0001 C CNN
	1    1800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3450 2350 3450
Wire Wire Line
	2950 4150 1800 4150
Wire Wire Line
	2950 2400 2950 4150
Wire Wire Line
	1900 1250 1900 2550
Wire Wire Line
	4750 1950 4750 1600
Wire Wire Line
	4750 1600 4850 1600
Connection ~ 4750 1600
Wire Wire Line
	3450 1100 4300 1100
Wire Wire Line
	4750 2350 4750 2400
Wire Wire Line
	4750 2400 4300 2400
Wire Wire Line
	4300 2400 4300 1100
Connection ~ 4750 2400
Wire Wire Line
	4750 2400 4750 2450
Connection ~ 4300 1100
Wire Wire Line
	4300 1100 4850 1100
$EndSCHEMATC
