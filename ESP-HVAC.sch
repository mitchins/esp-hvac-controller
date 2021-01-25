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
L Transistor_BJT:BC547 Q?
U 1 1 601444D5
P 3050 3450
F 0 "Q?" H 3241 3496 50  0000 L CNN
F 1 "BC547" H 3241 3405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3250 3375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 3050 3450 50  0001 L CNN
	1    3050 3450
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 601451F4
P 3150 2850
F 0 "D?" H 3150 3067 50  0000 C CNN
F 1 "1N4007" H 3150 2976 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3150 2675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3150 2850 50  0001 C CNN
	1    3150 2850
	0    1    1    0   
$EndComp
$Comp
L Relay:G5Q-1 K?
U 1 1 60146C49
P 4150 2850
F 0 "K?" H 4580 2896 50  0000 L CNN
F 1 "G5Q-1" H 4580 2805 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5Q-1" H 4600 2800 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 4150 2850 50  0001 L CNN
	1    4150 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60148E97
P 2550 3450
F 0 "R?" H 2620 3496 50  0000 L CNN
F 1 "1KR" H 2620 3405 50  0000 L CNN
F 2 "" V 2480 3450 50  0001 C CNN
F 3 "~" H 2550 3450 50  0001 C CNN
	1    2550 3450
	0    -1   -1   0   
$EndComp
$Comp
L Connector:RJ12 J?
U 1 1 601498EC
P 5250 2150
F 0 "J?" H 5307 2717 50  0000 C CNN
F 1 "RJ12" H 5307 2626 50  0000 C CNN
F 2 "" V 5250 2175 50  0001 C CNN
F 3 "~" V 5250 2175 50  0001 C CNN
	1    5250 2150
	-1   0    0    1   
$EndComp
$Comp
L MCU_Module:WeMos_D1_mini U?
U 1 1 60143495
P 1800 3350
F 0 "U?" H 1800 2461 50  0000 C CNN
F 1 "WeMos_D1_mini" H 1800 2370 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 1800 2200 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H -50 2200 50  0001 C CNN
	1    1800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4050 1400 3350
Wire Wire Line
	1400 250  -1050 250 
Wire Wire Line
	3950 2550 3150 2550
Wire Wire Line
	3150 2550 3150 2700
Connection ~ 1400 2950
Wire Wire Line
	1400 2950 1400 250 
Connection ~ 1400 3250
Wire Wire Line
	1400 3250 1400 2950
Connection ~ 1400 3350
Wire Wire Line
	1400 3350 1400 3250
Wire Wire Line
	3950 3150 3150 3150
Wire Wire Line
	3150 3150 3150 3000
Wire Wire Line
	2200 3450 2400 3450
Wire Wire Line
	2700 3450 2850 3450
Wire Wire Line
	3150 3250 3150 3150
Connection ~ 3150 3150
Wire Wire Line
	4250 2550 4250 1950
Wire Wire Line
	4250 1950 4750 1950
Wire Wire Line
	4850 2050 4750 2050
Wire Wire Line
	4750 2050 4750 1950
Connection ~ 4750 1950
Wire Wire Line
	4750 1950 4850 1950
Wire Wire Line
	4450 2550 4450 2450
Wire Wire Line
	4450 2450 4750 2450
Wire Wire Line
	4850 2350 4750 2350
Wire Wire Line
	4750 2350 4750 2450
Connection ~ 4750 2450
Wire Wire Line
	4750 2450 4850 2450
$Comp
L power:AC #PWR?
U 1 1 6015B1D9
P 1750 800
F 0 "#PWR?" H 1750 700 50  0001 C CNN
F 1 "AC" H 1750 1075 50  0000 C CNN
F 2 "" H 1750 800 50  0001 C CNN
F 3 "" H 1750 800 50  0001 C CNN
	1    1750 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6015CF15
P 1750 1250
F 0 "#PWR?" H 1750 1000 50  0001 C CNN
F 1 "GND" H 1755 1077 50  0000 C CNN
F 2 "" H 1750 1250 50  0001 C CNN
F 3 "" H 1750 1250 50  0001 C CNN
	1    1750 1250
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 6015E548
P 2550 1750
F 0 "D?" H 2550 1967 50  0000 C CNN
F 1 "1N4007" H 2550 1876 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2550 1575 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2550 1750 50  0001 C CNN
	1    2550 1750
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 60160B96
P 3150 1750
F 0 "D?" H 3150 1967 50  0000 C CNN
F 1 "1N4007" H 3150 1876 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3150 1575 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3150 1750 50  0001 C CNN
	1    3150 1750
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 60161C4A
P 2850 1450
F 0 "D?" H 2850 1667 50  0000 C CNN
F 1 "1N4007" H 2850 1576 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2850 1275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2850 1450 50  0001 C CNN
	1    2850 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1600 2550 1450
Wire Wire Line
	2550 1450 2700 1450
Wire Wire Line
	3150 1600 3150 1450
Wire Wire Line
	3150 1450 3000 1450
Wire Wire Line
	3000 2050 3150 2050
Wire Wire Line
	3150 2050 3150 1900
Wire Wire Line
	2550 1900 2550 2050
Wire Wire Line
	2550 2050 2700 2050
$Comp
L Diode:1N4007 D?
U 1 1 601629F3
P 2850 2050
F 0 "D?" H 2850 2267 50  0000 C CNN
F 1 "1N4007" H 2850 2176 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2850 1875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2850 2050 50  0001 C CNN
	1    2850 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 800  3150 800 
Wire Wire Line
	3150 800  3150 1450
Connection ~ 3150 1450
Wire Wire Line
	2550 2050 1900 2050
Wire Wire Line
	1900 2050 1900 1250
Wire Wire Line
	1900 1250 1750 1250
Connection ~ 2550 2050
Wire Wire Line
	4850 2150 4850 2200
Wire Wire Line
	4850 2200 1900 2200
Wire Wire Line
	1900 2200 1900 2050
Connection ~ 4850 2200
Wire Wire Line
	4850 2200 4850 2250
Connection ~ 1900 2050
Wire Wire Line
	4350 3150 5600 3150
Wire Wire Line
	5600 3150 5600 800 
Wire Wire Line
	5600 800  3150 800 
Connection ~ 3150 800 
$EndSCHEMATC
