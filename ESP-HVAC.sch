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
L ESP-HVAC-rescue:CONN_01X08 P1
U 1 1 5763EB78
P 9650 1400
F 0 "P1" H 9650 1850 50  0000 C CNN
F 1 "CONN_01X08" V 9750 1400 50  0000 C CNN
F 2 "D1_mini:D1_mini_Pin_Header" H 9650 1400 50  0001 C CNN
F 3 "" H 9650 1400 50  0000 C CNN
	1    9650 1400
	1    0    0    -1  
$EndComp
$Comp
L ESP-HVAC-rescue:CONN_01X08 P2
U 1 1 5763EBF2
P 10100 1400
F 0 "P2" H 10100 1850 50  0000 C CNN
F 1 "CONN_01X08" V 10200 1400 50  0000 C CNN
F 2 "D1_mini:D1_mini_Pin_Header" H 10100 1400 50  0001 C CNN
F 3 "" H 10100 1400 50  0000 C CNN
	1    10100 1400
	-1   0    0    -1  
$EndComp
Text Label 9450 1050 2    60   ~ 0
+5V
Text Label 9450 1150 2    60   ~ 0
GND
Text Label 9450 1250 2    60   ~ 0
D4
Text Label 9450 1350 2    60   ~ 0
D3
Text Label 9450 1450 2    60   ~ 0
D2
Text Label 9450 1550 2    60   ~ 0
D1
Text Label 9450 1650 2    60   ~ 0
RX
Text Label 9450 1750 2    60   ~ 0
TX
Text Label 10300 1050 0    60   ~ 0
+3.3V
Text Label 10300 1150 0    60   ~ 0
D8
Text Label 10300 1250 0    60   ~ 0
D7
Text Label 10300 1350 0    60   ~ 0
D6
Text Label 10300 1450 0    60   ~ 0
D5
Text Label 10300 1550 0    60   ~ 0
D0
Text Label 10300 1650 0    60   ~ 0
A0
Text Label 10300 1750 0    60   ~ 0
RST
Text Notes 9200 1250 2    60   ~ 0
GPIO2
Text Notes 9200 1350 2    60   ~ 0
GPIO0
Text Notes 9200 1450 2    60   ~ 0
GPIO4
Text Notes 9200 1550 2    60   ~ 0
GPIO5
Text Notes 10650 1150 0    60   ~ 0
GPIO15
Text Notes 10650 1250 0    60   ~ 0
GPIO13
Text Notes 10650 1350 0    60   ~ 0
GPIO12
Text Notes 10650 1450 0    60   ~ 0
GPIO14
Text Notes 10650 1550 0    60   ~ 0
GPIO16
Wire Notes Line
	8500 500  8500 2100
Wire Notes Line
	8500 2100 11200 2100
Text Notes 8550 600  0    60   ~ 0
D1 Mini Shield
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 6014F8A5
P 9350 3900
F 0 "Q1" H 9541 3946 50  0000 L CNN
F 1 "BC547" H 9541 3855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 9550 3825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 9350 3900 50  0001 L CNN
	1    9350 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 601518F1
P 8850 3900
F 0 "R1" H 8909 3946 50  0000 L CNN
F 1 "R_Small" H 8909 3855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8850 3900 50  0001 C CNN
F 3 "~" H 8850 3900 50  0001 C CNN
	1    8850 3900
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 6015227B
P 10900 3550
F 0 "J3" H 10980 3542 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 10980 3451 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 10900 3550 50  0001 C CNN
F 3 "~" H 10900 3550 50  0001 C CNN
	1    10900 3550
	1    0    0    -1  
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_C K1
U 1 1 6014B852
P 9250 3250
F 0 "K1" H 9680 3296 50  0000 L CNN
F 1 "SRD-03VDC-SL-C" H 9680 3205 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 9700 3200 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 9250 3250 50  0001 C CNN
	1    9250 3250
	-1   0    0    1   
$EndComp
$Comp
L Connector:4P4C J1
U 1 1 601671CD
P 8300 4550
F 0 "J1" H 8357 5017 50  0000 C CNN
F 1 "4P4C" H 8357 4926 50  0000 C CNN
F 2 "Connectors:RJ11-4P" V 8300 4600 50  0001 C CNN
F 3 "~" V 8300 4600 50  0001 C CNN
	1    8300 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector:4P4C J2
U 1 1 6016869E
P 9600 4450
F 0 "J2" H 9270 4454 50  0000 R CNN
F 1 "4P4C" H 9270 4545 50  0000 R CNN
F 2 "Connectors:RJ11-4P" V 9600 4500 50  0001 C CNN
F 3 "~" V 9600 4500 50  0001 C CNN
	1    9600 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 4450 8700 4500
Wire Wire Line
	8700 4350 9050 4350
Wire Wire Line
	8700 4650 9200 4650
Wire Wire Line
	8700 4500 9200 4500
Wire Wire Line
	9200 4450 9200 4500
Connection ~ 8700 4500
Wire Wire Line
	8700 4500 8700 4550
Connection ~ 9200 4500
Wire Wire Line
	9200 4500 9200 4550
Wire Wire Line
	10700 4500 9200 4500
Wire Wire Line
	10700 3650 10700 4500
Wire Wire Line
	8950 3550 7950 3550
Wire Wire Line
	7950 3550 7950 4800
Wire Wire Line
	7950 4800 8700 4800
Wire Wire Line
	8700 4800 8700 4650
Connection ~ 8700 4650
Wire Wire Line
	10700 3550 10700 2850
Wire Wire Line
	10700 2850 9050 2850
Wire Wire Line
	9050 2850 9050 2950
Wire Wire Line
	9150 3550 9050 3550
Wire Wire Line
	9050 3550 9050 4350
Connection ~ 9050 4350
Wire Wire Line
	9050 4350 9200 4350
Wire Wire Line
	9450 3700 9450 3550
Wire Wire Line
	9450 4100 9850 4100
Wire Wire Line
	9850 4100 9850 1150
Wire Wire Line
	9850 1150 9450 1150
Wire Wire Line
	9450 2950 9450 1950
Wire Wire Line
	9450 1950 10550 1950
Wire Wire Line
	10550 1950 10550 1050
Wire Wire Line
	10550 1050 10300 1050
Wire Wire Line
	9150 3900 8950 3900
Wire Wire Line
	8750 3900 8750 1550
Wire Wire Line
	8750 1550 9450 1550
$Comp
L Diode:1N4007 D1
U 1 1 6015030C
P 9750 3250
F 0 "D1" H 9750 3467 50  0000 C CNN
F 1 "1N4007" H 9750 3376 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9750 3075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 9750 3250 50  0001 C CNN
	1    9750 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 3400 9750 3550
Wire Wire Line
	9750 3550 9450 3550
Connection ~ 9450 3550
Wire Wire Line
	9750 3100 9750 2950
Wire Wire Line
	9750 2950 9450 2950
Connection ~ 9450 2950
$EndSCHEMATC
