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
Wire Wire Line
	2650 3550 2850 3550
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
P 5050 1800
F 0 "Q2" H 5241 1846 50  0000 L CNN
F 1 "BC547" H 5241 1755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 5250 1725 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 5050 1800 50  0001 L CNN
	1    5050 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2400 2950 3300
Wire Wire Line
	2200 3550 2350 3550
Wire Wire Line
	2200 3450 2350 3450
Wire Wire Line
	2950 4150 1800 4150
$Comp
L Diode:1N4007 D?
U 1 1 602CFFE5
P 5800 1450
F 0 "D?" H 5800 1667 50  0000 C CNN
F 1 "1N4007" H 5800 1576 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5800 1275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5800 1450 50  0001 C CNN
	1    5800 1450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 600F6E7B
P 1400 2050
F 0 "J2" H 1318 1725 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1318 1816 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 1400 2050 50  0001 C CNN
F 3 "~" H 1400 2050 50  0001 C CNN
	1    1400 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 1450 5950 1250
Wire Wire Line
	5950 1250 1900 1250
Connection ~ 5950 1450
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
	1900 1250 1900 2550
$Comp
L Device:R R1
U 1 1 60148E97
P 2500 3550
F 0 "R1" H 2570 3596 50  0000 L CNN
F 1 "1KR" H 2570 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2430 3550 50  0001 C CNN
F 3 "~" H 2500 3550 50  0001 C CNN
	1    2500 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6038D206
P 2500 3650
F 0 "R?" H 2570 3696 50  0000 L CNN
F 1 "1KR" H 2570 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2430 3650 50  0001 C CNN
F 3 "~" H 2500 3650 50  0001 C CNN
	1    2500 3650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6038F4D1
P 2500 3750
F 0 "R?" H 2570 3796 50  0000 L CNN
F 1 "1KR" H 2570 3705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2430 3750 50  0001 C CNN
F 3 "~" H 2500 3750 50  0001 C CNN
	1    2500 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 3650 2350 3650
Wire Wire Line
	2200 3750 2350 3750
Wire Wire Line
	2650 3650 2850 3650
Wire Wire Line
	2650 3750 2750 3750
Wire Wire Line
	2750 3750 2750 5900
Connection ~ 2950 4150
Wire Wire Line
	5950 1450 5950 1750
$Comp
L Relay:SANYOU_SRD_Form_C K?
U 1 1 603DD918
P 5600 1950
F 0 "K?" H 6030 1996 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 6030 1905 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6050 1900 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 5600 1950 50  0001 C CNN
	1    5600 1950
	0    1    1    0   
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_C K?
U 1 1 603E2073
P 5600 3150
F 0 "K?" V 5033 3150 50  0000 C CNN
F 1 "SANYOU_SRD_Form_C" V 5124 3150 50  0000 C CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6050 3100 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 5600 3150 50  0001 C CNN
	1    5600 3150
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 604001F8
P 5800 2650
F 0 "D?" H 5800 2867 50  0000 C CNN
F 1 "1N4007" H 5800 2776 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5800 2475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5800 2650 50  0001 C CNN
	1    5800 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 2550 6300 2650
Wire Wire Line
	6300 2450 6300 2350
$Comp
L Connector:RJ12 J?
U 1 1 6024402C
P 6700 2550
F 0 "J?" H 6757 3117 50  0000 C CNN
F 1 "RJ12" H 6757 3026 50  0000 C CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 6700 2575 50  0001 C CNN
F 3 "~" V 6700 2575 50  0001 C CNN
	1    6700 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 2850 6300 2750
Wire Wire Line
	5900 2950 5950 2950
Connection ~ 5950 2650
Wire Wire Line
	5950 2650 5950 2950
Wire Wire Line
	5300 2950 5300 2900
Wire Wire Line
	5300 2650 5650 2650
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 60427FE2
P 4950 3100
F 0 "Q?" H 5141 3146 50  0000 L CNN
F 1 "BC547" H 5141 3055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 5150 3025 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 4950 3100 50  0001 L CNN
	1    4950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2900 5300 2900
Connection ~ 5300 2900
Wire Wire Line
	5300 2900 5300 2650
Wire Wire Line
	5050 3300 2950 3300
Connection ~ 2950 3300
Wire Wire Line
	2950 3300 2950 4150
Wire Wire Line
	5300 1750 5300 1600
Wire Wire Line
	5300 1450 5650 1450
Wire Wire Line
	5150 1600 5300 1600
Connection ~ 5300 1600
Wire Wire Line
	5300 1600 5300 1450
Wire Wire Line
	2950 2400 5150 2400
Wire Wire Line
	5150 2400 5150 2000
Wire Wire Line
	2850 3100 4750 3100
Wire Wire Line
	2850 3100 2850 3550
Wire Wire Line
	4850 1800 2650 1800
Wire Wire Line
	2650 1800 2650 3450
Connection ~ 6300 2550
Wire Wire Line
	5300 1950 5300 2150
Wire Wire Line
	1600 1950 5250 1950
Wire Wire Line
	5250 1950 5250 3350
Wire Wire Line
	5250 3350 5300 3350
Connection ~ 5250 1950
Wire Wire Line
	5250 1950 5300 1950
Wire Wire Line
	5900 2250 6300 2250
Wire Wire Line
	6300 2250 6300 2350
Connection ~ 6300 2350
Wire Wire Line
	5900 3450 6300 3450
Wire Wire Line
	6300 3450 6300 2850
Connection ~ 6300 2850
Wire Wire Line
	2950 4150 2950 6100
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 6045FBEF
P 5050 4600
F 0 "Q?" H 5241 4646 50  0000 L CNN
F 1 "BC547" H 5241 4555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 5250 4525 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 5050 4600 50  0001 L CNN
	1    5050 4600
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 6045FBF6
P 5800 4250
F 0 "D?" H 5800 4467 50  0000 C CNN
F 1 "1N4007" H 5800 4376 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5800 4075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5800 4250 50  0001 C CNN
	1    5800 4250
	-1   0    0    1   
$EndComp
Connection ~ 5950 4250
Wire Wire Line
	5950 4250 5950 4550
$Comp
L Relay:SANYOU_SRD_Form_C K?
U 1 1 6045FBFF
P 5600 4750
F 0 "K?" H 6030 4796 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 6030 4705 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6050 4700 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 5600 4750 50  0001 C CNN
	1    5600 4750
	0    1    1    0   
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_C K?
U 1 1 6045FC05
P 5600 5950
F 0 "K?" V 5033 5950 50  0000 C CNN
F 1 "SANYOU_SRD_Form_C" V 5124 5950 50  0000 C CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6050 5900 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 5600 5950 50  0001 C CNN
	1    5600 5950
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 6045FC0B
P 5800 5450
F 0 "D?" H 5800 5667 50  0000 C CNN
F 1 "1N4007" H 5800 5576 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5800 5275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5800 5450 50  0001 C CNN
	1    5800 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 5350 6300 5450
$Comp
L Connector:RJ12 J?
U 1 1 6045FC13
P 6700 5350
F 0 "J?" H 6757 5917 50  0000 C CNN
F 1 "RJ12" H 6757 5826 50  0000 C CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 6700 5375 50  0001 C CNN
F 3 "~" V 6700 5375 50  0001 C CNN
	1    6700 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 5650 6300 5550
Wire Wire Line
	5900 5750 5950 5750
Connection ~ 5950 5450
Wire Wire Line
	5950 5450 5950 5750
Wire Wire Line
	5300 5750 5300 5700
Wire Wire Line
	5300 5450 5650 5450
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 6045FC1F
P 4950 5900
F 0 "Q?" H 5141 5946 50  0000 L CNN
F 1 "BC547" H 5141 5855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 5150 5825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 4950 5900 50  0001 L CNN
	1    4950 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5700 5300 5700
Connection ~ 5300 5700
Wire Wire Line
	5300 5700 5300 5450
Wire Wire Line
	5300 4550 5300 4400
Wire Wire Line
	5300 4250 5650 4250
Wire Wire Line
	5150 4400 5300 4400
Connection ~ 5300 4400
Wire Wire Line
	5300 4400 5300 4250
Wire Wire Line
	4950 4850 4950 5350
Wire Wire Line
	4950 5350 6300 5350
Connection ~ 6300 5350
Wire Wire Line
	5300 4750 5300 4950
Wire Wire Line
	5250 4750 5250 6150
Wire Wire Line
	5250 6150 5300 6150
Connection ~ 5250 4750
Wire Wire Line
	5250 4750 5300 4750
Wire Wire Line
	5900 5050 6300 5050
Wire Wire Line
	6300 5050 6300 5150
Connection ~ 6300 5150
Wire Wire Line
	6300 6250 6300 5650
Connection ~ 6300 5650
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 60473A9F
P 8150 1800
F 0 "Q?" H 8341 1846 50  0000 L CNN
F 1 "BC547" H 8341 1755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 8350 1725 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 8150 1800 50  0001 L CNN
	1    8150 1800
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 60473AA6
P 8900 1450
F 0 "D?" H 8900 1667 50  0000 C CNN
F 1 "1N4007" H 8900 1576 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8900 1275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8900 1450 50  0001 C CNN
	1    8900 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	9050 1450 9050 1250
Connection ~ 9050 1450
Wire Wire Line
	9050 1450 9050 2650
$Comp
L Relay:SANYOU_SRD_Form_C K?
U 1 1 60473AAF
P 8700 1950
F 0 "K?" H 9130 1996 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 9130 1905 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 9150 1900 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 8700 1950 50  0001 C CNN
	1    8700 1950
	0    1    1    0   
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_C K?
U 1 1 60473AB5
P 8700 3150
F 0 "K?" V 8133 3150 50  0000 C CNN
F 1 "SANYOU_SRD_Form_C" V 8224 3150 50  0000 C CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 9150 3100 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 8700 3150 50  0001 C CNN
	1    8700 3150
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 60473ABB
P 8900 2650
F 0 "D?" H 8900 2867 50  0000 C CNN
F 1 "1N4007" H 8900 2776 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8900 2475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8900 2650 50  0001 C CNN
	1    8900 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 2550 9400 2650
Wire Wire Line
	9400 2450 9400 2350
$Comp
L Connector:RJ12 J?
U 1 1 60473AC3
P 9800 2550
F 0 "J?" H 9857 3117 50  0000 C CNN
F 1 "RJ12" H 9857 3026 50  0000 C CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 9800 2575 50  0001 C CNN
F 3 "~" V 9800 2575 50  0001 C CNN
	1    9800 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 2850 9400 2750
Wire Wire Line
	9000 2950 9050 2950
Connection ~ 9050 2650
Wire Wire Line
	9050 2650 9050 2950
Wire Wire Line
	8400 2950 8400 2900
Wire Wire Line
	8400 2650 8750 2650
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 60473ACF
P 8050 3100
F 0 "Q?" H 8241 3146 50  0000 L CNN
F 1 "BC547" H 8241 3055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 8250 3025 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 8050 3100 50  0001 L CNN
	1    8050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2900 8400 2900
Connection ~ 8400 2900
Wire Wire Line
	8400 2900 8400 2650
Wire Wire Line
	8400 1750 8400 1600
Wire Wire Line
	8400 1450 8750 1450
Wire Wire Line
	8250 1600 8400 1600
Connection ~ 8400 1600
Wire Wire Line
	8400 1600 8400 1450
Connection ~ 9400 2550
Wire Wire Line
	8400 1950 8400 2150
Wire Wire Line
	4700 1950 5250 1950
Wire Wire Line
	8350 1950 8350 3350
Wire Wire Line
	8350 3350 8400 3350
Wire Wire Line
	8350 1950 8400 1950
Wire Wire Line
	9000 2250 9400 2250
Wire Wire Line
	9400 2250 9400 2350
Connection ~ 9400 2350
Wire Wire Line
	9000 3450 9400 3450
Wire Wire Line
	9400 3450 9400 2850
Connection ~ 9400 2850
$Comp
L Diode:1N4007 D?
U 1 1 6047FB13
P 8900 4250
F 0 "D?" H 8900 4467 50  0000 C CNN
F 1 "1N4007" H 8900 4376 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8900 4075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8900 4250 50  0001 C CNN
	1    8900 4250
	-1   0    0    1   
$EndComp
Connection ~ 9050 4250
Wire Wire Line
	9050 4250 9050 5450
$Comp
L Relay:SANYOU_SRD_Form_C K?
U 1 1 6047FB1C
P 8700 4750
F 0 "K?" H 9130 4796 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 9130 4705 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 9150 4700 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 8700 4750 50  0001 C CNN
	1    8700 4750
	0    1    1    0   
$EndComp
$Comp
L HK4100F-DC5V-SHG:HK4100F-DC5V-SHG K?
U 1 1 6047FB22
P 8150 6400
F 0 "K?" V 7583 6400 50  0000 C CNN
F 1 "SANYOU_SRD_Form_C" V 7674 6400 50  0000 C CNN
F 2 "HK4100F-DC5V-SHG:HK4100FDC5VSHG" H 8600 6350 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 8150 6400 50  0001 C CNN
	1    8150 6400
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 6047FB28
P 8900 5450
F 0 "D?" H 8900 5667 50  0000 C CNN
F 1 "1N4007" H 8900 5576 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8900 5275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8900 5450 50  0001 C CNN
	1    8900 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 5350 9400 5450
Wire Wire Line
	9400 5250 9400 5150
$Comp
L Connector:RJ12 J?
U 1 1 6047FB30
P 9800 5350
F 0 "J?" H 9857 5917 50  0000 C CNN
F 1 "RJ12" H 9857 5826 50  0000 C CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 9800 5375 50  0001 C CNN
F 3 "~" V 9800 5375 50  0001 C CNN
	1    9800 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 5650 9400 5550
Wire Wire Line
	9000 5750 9050 5750
Connection ~ 9050 5450
Wire Wire Line
	9050 5450 9050 5750
Wire Wire Line
	8400 5750 8400 5700
Wire Wire Line
	8400 5450 8750 5450
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 6047FB3C
P 8050 5900
F 0 "Q?" H 8241 5946 50  0000 L CNN
F 1 "BC547" H 8241 5855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 8250 5825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 8050 5900 50  0001 L CNN
	1    8050 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5700 8400 5700
Connection ~ 8400 5700
Wire Wire Line
	8400 5700 8400 5450
Wire Wire Line
	8400 4550 8400 4400
Wire Wire Line
	8400 4250 8750 4250
Wire Wire Line
	8250 4400 8400 4400
Connection ~ 8400 4400
Wire Wire Line
	8400 4400 8400 4250
Wire Wire Line
	6050 5350 6300 5350
Connection ~ 9400 5350
Wire Wire Line
	8400 4750 8400 4950
Wire Wire Line
	8350 4750 8350 6150
Wire Wire Line
	8350 6150 8400 6150
Wire Wire Line
	8350 4750 8400 4750
Wire Wire Line
	9000 5050 9400 5050
Wire Wire Line
	9400 5050 9400 5150
Connection ~ 9400 5150
Wire Wire Line
	9000 6250 9400 6250
Wire Wire Line
	9400 6250 9400 5650
Connection ~ 9400 5650
Wire Wire Line
	6300 5150 6300 5250
Wire Wire Line
	5150 6100 5050 6100
Wire Wire Line
	5150 4800 5150 6100
Wire Wire Line
	2850 4600 4850 4600
Wire Wire Line
	2850 3650 2850 4600
Wire Wire Line
	4750 5900 2750 5900
Wire Wire Line
	5050 6100 2950 6100
Connection ~ 5050 6100
Wire Wire Line
	4700 4750 5250 4750
Wire Wire Line
	4800 2550 4800 4850
Wire Wire Line
	4800 4850 4950 4850
Wire Wire Line
	4700 4750 4700 3350
Wire Wire Line
	4700 3350 5250 3350
Connection ~ 5250 3350
Wire Wire Line
	5900 1750 5950 1750
Connection ~ 5950 1750
Wire Wire Line
	5950 1750 5950 2650
Wire Wire Line
	5900 4550 5950 4550
Connection ~ 5950 4550
Wire Wire Line
	5950 4550 5950 5450
Wire Wire Line
	5950 2950 5950 4250
Connection ~ 5950 2950
Wire Wire Line
	5900 6250 6300 6250
Wire Wire Line
	9050 2950 9050 4250
Connection ~ 9050 2950
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 6047FB0C
P 8150 4600
F 0 "Q?" H 8341 4646 50  0000 L CNN
F 1 "BC547" H 8341 4555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 8350 4525 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 8150 4600 50  0001 L CNN
	1    8150 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5350 9400 5350
Wire Wire Line
	6300 2550 9400 2550
Wire Wire Line
	8250 6100 8150 6100
Wire Wire Line
	8250 4800 8250 6100
Wire Wire Line
	8150 3300 8150 4800
Wire Wire Line
	8150 4800 8250 4800
Connection ~ 8250 4800
Wire Wire Line
	8250 3300 8150 3300
Wire Wire Line
	8250 2000 8250 3300
Connection ~ 8150 3300
Wire Wire Line
	8150 6100 5150 6100
Connection ~ 8150 6100
Connection ~ 5150 6100
Wire Wire Line
	4800 2550 6300 2550
$Comp
L Device:R R?
U 1 1 60569DA4
P 2400 3150
F 0 "R?" H 2470 3196 50  0000 L CNN
F 1 "1KR" H 2470 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2330 3150 50  0001 C CNN
F 3 "~" H 2400 3150 50  0001 C CNN
	1    2400 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60569D9E
P 2400 3050
F 0 "R?" H 2470 3096 50  0000 L CNN
F 1 "1KR" H 2470 3005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2330 3050 50  0001 C CNN
F 3 "~" H 2400 3050 50  0001 C CNN
	1    2400 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60558D98
P 2400 3350
F 0 "R?" H 2470 3396 50  0000 L CNN
F 1 "1KR" H 2470 3305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2330 3350 50  0001 C CNN
F 3 "~" H 2400 3350 50  0001 C CNN
	1    2400 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60558D92
P 2400 3250
F 0 "R?" H 2470 3296 50  0000 L CNN
F 1 "1KR" H 2470 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2330 3250 50  0001 C CNN
F 3 "~" H 2400 3250 50  0001 C CNN
	1    2400 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 3050 2250 3050
Wire Wire Line
	2250 3150 2200 3150
Wire Wire Line
	2200 3250 2250 3250
Wire Wire Line
	2250 3350 2200 3350
Wire Wire Line
	2550 3050 2550 1000
Wire Wire Line
	2550 1000 7950 1000
Wire Wire Line
	7950 1000 7950 1800
Wire Wire Line
	2550 3150 2600 3150
Wire Wire Line
	2600 3150 2600 1050
Wire Wire Line
	2600 1050 7850 1050
Wire Wire Line
	7850 1050 7850 3100
Wire Wire Line
	2550 3350 2700 3350
Wire Wire Line
	2700 3350 2700 3600
Wire Wire Line
	2700 3600 6500 3600
Wire Wire Line
	6500 3600 6500 4600
Wire Wire Line
	6500 4600 7950 4600
Wire Wire Line
	2550 3250 2750 3250
Wire Wire Line
	2750 3250 2750 3700
Wire Wire Line
	2750 3700 7850 3700
Wire Wire Line
	7850 3700 7850 5900
$EndSCHEMATC
