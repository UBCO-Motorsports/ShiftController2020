EESchema Schematic File Version 4
LIBS:ShiftControllerV2-cache
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
L Power_Management:BTN8982TA Q1
U 1 1 5DBDBBC0
P 8550 2500
F 0 "Q1" H 7850 3000 50  0000 L CNN
F 1 "BTN8982TA" H 7700 3100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-7_TabPin8" H 8350 2950 50  0001 C CNN
F 3 "https://www.infineon.com/dgdl/Infineon-BTN8982TA-DS-v01_00-EN.pdf?fileId=db3a30433fa9412f013fbe32289b7c17" H 8500 2510 50  0001 C CNN
	1    8550 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Counter_Clockwise J2
U 1 1 5DBE2105
P 4400 4850
F 0 "J2" H 4450 5267 50  0000 C CNN
F 1 "PWR + I/O" H 4450 5176 50  0000 C CNN
F 2 "Lukas_Library:MX120G" H 4400 4850 50  0001 C CNN
F 3 "~" H 4400 4850 50  0001 C CNN
	1    4400 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR03
U 1 1 5DBE4281
P 4200 4650
F 0 "#PWR03" H 4200 4500 50  0001 C CNN
F 1 "+12V" V 4215 4778 50  0000 L CNN
F 2 "" H 4200 4650 50  0001 C CNN
F 3 "" H 4200 4650 50  0001 C CNN
	1    4200 4650
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR06
U 1 1 5DBE4D10
P 4200 5150
F 0 "#PWR06" H 4200 5000 50  0001 C CNN
F 1 "+12V" V 4215 5278 50  0000 L CNN
F 2 "" H 4200 5150 50  0001 C CNN
F 3 "" H 4200 5150 50  0001 C CNN
	1    4200 5150
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR011
U 1 1 5DBE54C5
P 4700 5150
F 0 "#PWR011" H 4700 5000 50  0001 C CNN
F 1 "+12V" V 4700 5250 50  0000 L CNN
F 2 "" H 4700 5150 50  0001 C CNN
F 3 "" H 4700 5150 50  0001 C CNN
	1    4700 5150
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR08
U 1 1 5DBE5C18
P 4700 4650
F 0 "#PWR08" H 4700 4500 50  0001 C CNN
F 1 "+12V" V 4700 4750 50  0000 L CNN
F 2 "" H 4700 4650 50  0001 C CNN
F 3 "" H 4700 4650 50  0001 C CNN
	1    4700 4650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5DBE6432
P 4200 4750
F 0 "#PWR04" H 4200 4500 50  0001 C CNN
F 1 "GND" V 4205 4622 50  0000 R CNN
F 2 "" H 4200 4750 50  0001 C CNN
F 3 "" H 4200 4750 50  0001 C CNN
	1    4200 4750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5DBE6B80
P 4200 5050
F 0 "#PWR05" H 4200 4800 50  0001 C CNN
F 1 "GND" V 4205 4922 50  0000 R CNN
F 2 "" H 4200 5050 50  0001 C CNN
F 3 "" H 4200 5050 50  0001 C CNN
	1    4200 5050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5DBE711F
P 4700 5050
F 0 "#PWR010" H 4700 4800 50  0001 C CNN
F 1 "GND" V 4705 4922 50  0000 R CNN
F 2 "" H 4700 5050 50  0001 C CNN
F 3 "" H 4700 5050 50  0001 C CNN
	1    4700 5050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5DBE76FC
P 4700 4750
F 0 "#PWR09" H 4700 4500 50  0001 C CNN
F 1 "GND" V 4705 4622 50  0000 R CNN
F 2 "" H 4700 4750 50  0001 C CNN
F 3 "" H 4700 4750 50  0001 C CNN
	1    4700 4750
	0    -1   -1   0   
$EndComp
Text GLabel 4200 4850 0    50   Input ~ 0
CANH
Text GLabel 4200 4950 0    50   Input ~ 0
CANL
Text GLabel 9150 2500 2    50   Input ~ 0
OUT1
$Comp
L power:+12V #PWR018
U 1 1 5DBF8827
P 8650 2000
F 0 "#PWR018" H 8650 1850 50  0001 C CNN
F 1 "+12V" H 8665 2173 50  0000 C CNN
F 2 "" H 8650 2000 50  0001 C CNN
F 3 "" H 8650 2000 50  0001 C CNN
	1    8650 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5DBF94A3
P 8650 2900
F 0 "#PWR019" H 8650 2650 50  0001 C CNN
F 1 "GND" H 8655 2727 50  0000 C CNN
F 2 "" H 8650 2900 50  0001 C CNN
F 3 "" H 8650 2900 50  0001 C CNN
	1    8650 2900
	1    0    0    -1  
$EndComp
Text GLabel 8250 2300 0    50   Input ~ 0
INH1
Text GLabel 8250 2400 0    50   Input ~ 0
IN1
$Comp
L Device:R R3
U 1 1 5DBFA5F1
P 8300 3050
F 0 "R3" H 8370 3096 50  0000 L CNN
F 1 "510" H 8370 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8230 3050 50  0001 C CNN
F 3 "~" H 8300 3050 50  0001 C CNN
	1    8300 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5DBFAB39
P 8100 3050
F 0 "C4" H 7900 3050 50  0000 L CNN
F 1 "100n" H 7850 2950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8138 2900 50  0001 C CNN
F 3 "~" H 8100 3050 50  0001 C CNN
	1    8100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3200 8200 3200
$Comp
L power:GND #PWR014
U 1 1 5DBFC1CC
P 8200 3200
F 0 "#PWR014" H 8200 2950 50  0001 C CNN
F 1 "GND" H 8205 3027 50  0000 C CNN
F 2 "" H 8200 3200 50  0001 C CNN
F 3 "" H 8200 3200 50  0001 C CNN
	1    8200 3200
	1    0    0    -1  
$EndComp
Connection ~ 8200 3200
Wire Wire Line
	8200 3200 8300 3200
$Comp
L Device:R R1
U 1 1 5DC08F2C
P 7700 2800
F 0 "R1" H 7770 2846 50  0000 L CNN
F 1 "510" H 7770 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7630 2800 50  0001 C CNN
F 3 "~" H 7700 2800 50  0001 C CNN
	1    7700 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DC08F36
P 7500 2800
F 0 "C2" H 7300 2800 50  0000 L CNN
F 1 "1n" H 7250 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7538 2650 50  0001 C CNN
F 3 "~" H 7500 2800 50  0001 C CNN
	1    7500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2950 7600 2950
$Comp
L power:GND #PWR012
U 1 1 5DC08F41
P 7600 2950
F 0 "#PWR012" H 7600 2700 50  0001 C CNN
F 1 "GND" H 7605 2777 50  0000 C CNN
F 2 "" H 7600 2950 50  0001 C CNN
F 3 "" H 7600 2950 50  0001 C CNN
	1    7600 2950
	1    0    0    -1  
$EndComp
Connection ~ 7600 2950
Wire Wire Line
	7600 2950 7700 2950
Wire Wire Line
	8100 2900 8200 2900
Wire Wire Line
	8200 2900 8200 2700
Wire Wire Line
	8200 2700 8250 2700
Connection ~ 8200 2900
Wire Wire Line
	8200 2900 8300 2900
Wire Wire Line
	7500 2650 7600 2650
Wire Wire Line
	7600 2650 7600 2600
Wire Wire Line
	7600 2600 8250 2600
Connection ~ 7600 2650
Wire Wire Line
	7600 2650 7700 2650
Text GLabel 7600 2600 1    50   Input ~ 0
CURRENT1
$Comp
L Device:C C9
U 1 1 5DC15E9E
P 9000 2750
F 0 "C9" H 9150 2750 50  0000 L CNN
F 1 "220n" H 9150 2650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9038 2600 50  0001 C CNN
F 3 "~" H 9000 2750 50  0001 C CNN
	1    9000 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5DC173AA
P 9000 2250
F 0 "C8" H 9150 2250 50  0000 L CNN
F 1 "220n" H 9150 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9038 2100 50  0001 C CNN
F 3 "~" H 9000 2250 50  0001 C CNN
	1    9000 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR022
U 1 1 5DC18065
P 9000 2000
F 0 "#PWR022" H 9000 1850 50  0001 C CNN
F 1 "+12V" H 9015 2173 50  0000 C CNN
F 2 "" H 9000 2000 50  0001 C CNN
F 3 "" H 9000 2000 50  0001 C CNN
	1    9000 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5DC18400
P 9000 2900
F 0 "#PWR023" H 9000 2650 50  0001 C CNN
F 1 "GND" H 9005 2727 50  0000 C CNN
F 2 "" H 9000 2900 50  0001 C CNN
F 3 "" H 9000 2900 50  0001 C CNN
	1    9000 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5DC1B009
P 8500 2000
F 0 "C6" V 8350 1850 50  0000 C CNN
F 1 "100n" V 8450 1850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8538 1850 50  0001 C CNN
F 3 "~" H 8500 2000 50  0001 C CNN
	1    8500 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5DC1C16E
P 8350 2000
F 0 "#PWR016" H 8350 1750 50  0001 C CNN
F 1 "GND" H 8350 1850 50  0000 C CNN
F 2 "" H 8350 2000 50  0001 C CNN
F 3 "" H 8350 2000 50  0001 C CNN
	1    8350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2000 8650 2100
Connection ~ 8650 2000
Wire Wire Line
	9000 2000 9000 2100
Wire Wire Line
	9000 2400 9000 2500
Wire Wire Line
	8850 2500 9000 2500
Connection ~ 9000 2500
Wire Wire Line
	9000 2500 9000 2600
Wire Wire Line
	9000 2500 9150 2500
Wire Notes Line
	7100 3500 7100 1650
Wire Notes Line
	7100 1650 9500 1650
Wire Notes Line
	9500 1650 9500 3500
Wire Notes Line
	9500 3500 7100 3500
Text Notes 8100 1650 0    50   ~ 0
Bridge 1
$Comp
L Power_Management:BTN8982TA Q2
U 1 1 5DC2A259
P 8550 4750
F 0 "Q2" H 7850 5250 50  0000 L CNN
F 1 "BTN8982TA" H 7700 5350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-7_TabPin8" H 8350 5200 50  0001 C CNN
F 3 "https://www.infineon.com/dgdl/Infineon-BTN8982TA-DS-v01_00-EN.pdf?fileId=db3a30433fa9412f013fbe32289b7c17" H 8500 4760 50  0001 C CNN
	1    8550 4750
	1    0    0    -1  
$EndComp
Text GLabel 9150 4750 2    50   Input ~ 0
OUT2
$Comp
L power:+12V #PWR020
U 1 1 5DC2A264
P 8650 4250
F 0 "#PWR020" H 8650 4100 50  0001 C CNN
F 1 "+12V" H 8665 4423 50  0000 C CNN
F 2 "" H 8650 4250 50  0001 C CNN
F 3 "" H 8650 4250 50  0001 C CNN
	1    8650 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5DC2A26E
P 8650 5150
F 0 "#PWR021" H 8650 4900 50  0001 C CNN
F 1 "GND" H 8655 4977 50  0000 C CNN
F 2 "" H 8650 5150 50  0001 C CNN
F 3 "" H 8650 5150 50  0001 C CNN
	1    8650 5150
	1    0    0    -1  
$EndComp
Text GLabel 8250 4550 0    50   Input ~ 0
INH2
Text GLabel 8250 4650 0    50   Input ~ 0
IN2
$Comp
L Device:R R4
U 1 1 5DC2A27A
P 8300 5300
F 0 "R4" H 8370 5346 50  0000 L CNN
F 1 "510" H 8370 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8230 5300 50  0001 C CNN
F 3 "~" H 8300 5300 50  0001 C CNN
	1    8300 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5DC2A284
P 8100 5300
F 0 "C5" H 7900 5300 50  0000 L CNN
F 1 "100n" H 7850 5200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8138 5150 50  0001 C CNN
F 3 "~" H 8100 5300 50  0001 C CNN
	1    8100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5450 8200 5450
$Comp
L power:GND #PWR015
U 1 1 5DC2A28F
P 8200 5450
F 0 "#PWR015" H 8200 5200 50  0001 C CNN
F 1 "GND" H 8205 5277 50  0000 C CNN
F 2 "" H 8200 5450 50  0001 C CNN
F 3 "" H 8200 5450 50  0001 C CNN
	1    8200 5450
	1    0    0    -1  
$EndComp
Connection ~ 8200 5450
Wire Wire Line
	8200 5450 8300 5450
$Comp
L Device:R R2
U 1 1 5DC2A29B
P 7700 5050
F 0 "R2" H 7770 5096 50  0000 L CNN
F 1 "510" H 7770 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7630 5050 50  0001 C CNN
F 3 "~" H 7700 5050 50  0001 C CNN
	1    7700 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5DC2A2A5
P 7500 5050
F 0 "C3" H 7300 5050 50  0000 L CNN
F 1 "100n" H 7250 4950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7538 4900 50  0001 C CNN
F 3 "~" H 7500 5050 50  0001 C CNN
	1    7500 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5200 7600 5200
$Comp
L power:GND #PWR013
U 1 1 5DC2A2B0
P 7600 5200
F 0 "#PWR013" H 7600 4950 50  0001 C CNN
F 1 "GND" H 7605 5027 50  0000 C CNN
F 2 "" H 7600 5200 50  0001 C CNN
F 3 "" H 7600 5200 50  0001 C CNN
	1    7600 5200
	1    0    0    -1  
$EndComp
Connection ~ 7600 5200
Wire Wire Line
	7600 5200 7700 5200
Wire Wire Line
	8100 5150 8200 5150
Wire Wire Line
	8200 5150 8200 4950
Wire Wire Line
	8200 4950 8250 4950
Connection ~ 8200 5150
Wire Wire Line
	8200 5150 8300 5150
Wire Wire Line
	7500 4900 7600 4900
Wire Wire Line
	7600 4900 7600 4850
Wire Wire Line
	7600 4850 8250 4850
Connection ~ 7600 4900
Wire Wire Line
	7600 4900 7700 4900
Text GLabel 7600 4850 1    50   Input ~ 0
CURRENT2
$Comp
L Device:C C11
U 1 1 5DC2A2C7
P 9000 5000
F 0 "C11" H 9150 5000 50  0000 L CNN
F 1 "220n" H 9150 4900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9038 4850 50  0001 C CNN
F 3 "~" H 9000 5000 50  0001 C CNN
	1    9000 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5DC2A2D1
P 9000 4500
F 0 "C10" H 9150 4500 50  0000 L CNN
F 1 "220n" H 9150 4400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9038 4350 50  0001 C CNN
F 3 "~" H 9000 4500 50  0001 C CNN
	1    9000 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR024
U 1 1 5DC2A2DB
P 9000 4250
F 0 "#PWR024" H 9000 4100 50  0001 C CNN
F 1 "+12V" H 9015 4423 50  0000 C CNN
F 2 "" H 9000 4250 50  0001 C CNN
F 3 "" H 9000 4250 50  0001 C CNN
	1    9000 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5DC2A2E5
P 9000 5150
F 0 "#PWR025" H 9000 4900 50  0001 C CNN
F 1 "GND" H 9005 4977 50  0000 C CNN
F 2 "" H 9000 5150 50  0001 C CNN
F 3 "" H 9000 5150 50  0001 C CNN
	1    9000 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5DC2A2EF
P 8500 4250
F 0 "C7" V 8350 4100 50  0000 C CNN
F 1 "100n" V 8450 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8538 4100 50  0001 C CNN
F 3 "~" H 8500 4250 50  0001 C CNN
	1    8500 4250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5DC2A2F9
P 8350 4250
F 0 "#PWR017" H 8350 4000 50  0001 C CNN
F 1 "GND" H 8350 4100 50  0000 C CNN
F 2 "" H 8350 4250 50  0001 C CNN
F 3 "" H 8350 4250 50  0001 C CNN
	1    8350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4250 8650 4350
Connection ~ 8650 4250
Wire Wire Line
	9000 4250 9000 4350
Wire Wire Line
	9000 4650 9000 4750
Wire Wire Line
	8850 4750 9000 4750
Connection ~ 9000 4750
Wire Wire Line
	9000 4750 9000 4850
Wire Wire Line
	9000 4750 9150 4750
Wire Notes Line
	7100 5750 7100 3900
Wire Notes Line
	7100 3900 9500 3900
Wire Notes Line
	9500 3900 9500 5750
Wire Notes Line
	9500 5750 7100 5750
Text Notes 8100 3900 0    50   ~ 0
Bridge 2
$Comp
L Device:CP C1
U 1 1 5DC561EC
P 2950 4900
F 0 "C1" H 3068 4946 50  0000 L CNN
F 1 "1000u" H 3068 4855 50  0000 L CNN
F 2 "" H 2988 4750 50  0001 C CNN
F 3 "~" H 2950 4900 50  0001 C CNN
	1    2950 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 5DC571A8
P 2950 4750
F 0 "#PWR01" H 2950 4600 50  0001 C CNN
F 1 "+12V" H 2965 4923 50  0000 C CNN
F 2 "" H 2950 4750 50  0001 C CNN
F 3 "" H 2950 4750 50  0001 C CNN
	1    2950 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5DC582E9
P 2950 5050
F 0 "#PWR02" H 2950 4800 50  0001 C CNN
F 1 "GND" H 2955 4877 50  0000 C CNN
F 2 "" H 2950 5050 50  0001 C CNN
F 3 "" H 2950 5050 50  0001 C CNN
	1    2950 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D1
U 1 1 5DC58E36
P 2650 4900
F 0 "D1" V 2600 4700 50  0000 L CNN
F 1 "30v" V 2700 4650 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2650 4900 50  0001 C CNN
F 3 "~" H 2650 4900 50  0001 C CNN
	1    2650 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 4750 2950 4750
Connection ~ 2950 4750
Wire Wire Line
	2650 5050 2950 5050
Connection ~ 2950 5050
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5DC60A9B
P 4250 6000
F 0 "J1" H 4358 6281 50  0000 C CNN
F 1 "SOLENOID" H 4358 6190 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Sr_42819-32XX_1x03_P10.00mm_Vertical" H 4250 6000 50  0001 C CNN
F 3 "~" H 4250 6000 50  0001 C CNN
	1    4250 6000
	1    0    0    -1  
$EndComp
Text GLabel 4450 6100 2    50   Input ~ 0
OUT2
Text GLabel 4450 5900 2    50   Input ~ 0
OUT1
$Comp
L power:GND #PWR07
U 1 1 5DC6182E
P 4450 6000
F 0 "#PWR07" H 4450 5750 50  0001 C CNN
F 1 "GND" V 4455 5872 50  0000 R CNN
F 2 "" H 4450 6000 50  0001 C CNN
F 3 "" H 4450 6000 50  0001 C CNN
	1    4450 6000
	0    -1   -1   0   
$EndComp
$Comp
L Lukas_Library:ControllerBoardV1 U1
U 1 1 5DC21698
P 4200 2250
F 0 "U1" H 4450 3215 50  0000 C CNN
F 1 "ControllerBoardV1" H 4450 3124 50  0000 C CNN
F 2 "Lukas_Library:Breadboard_Center_32pin" H 4200 2950 50  0001 C CNN
F 3 "" H 4200 2950 50  0001 C CNN
	1    4200 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5DC8844A
P 3800 1750
F 0 "#PWR0101" H 3800 1500 50  0001 C CNN
F 1 "GND" V 3805 1577 50  0000 C CNN
F 2 "" H 3800 1750 50  0001 C CNN
F 3 "" H 3800 1750 50  0001 C CNN
	1    3800 1750
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0102
U 1 1 5DC88C83
P 3800 1900
F 0 "#PWR0102" H 3800 1750 50  0001 C CNN
F 1 "+12V" V 3800 2100 50  0000 C CNN
F 2 "" H 3800 1900 50  0001 C CNN
F 3 "" H 3800 1900 50  0001 C CNN
	1    3800 1900
	0    -1   -1   0   
$EndComp
Text GLabel 5100 1900 2    50   Input ~ 0
CANH
Text GLabel 5100 1750 2    50   Input ~ 0
CANL
$Comp
L power:GND #PWR0103
U 1 1 5DC8A201
P 5100 4000
F 0 "#PWR0103" H 5100 3750 50  0001 C CNN
F 1 "GND" H 5200 3850 50  0000 R CNN
F 2 "" H 5100 4000 50  0001 C CNN
F 3 "" H 5100 4000 50  0001 C CNN
	1    5100 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DC8AA65
P 5100 2050
F 0 "#PWR0104" H 5100 1800 50  0001 C CNN
F 1 "GND" V 5105 1877 50  0000 C CNN
F 2 "" H 5100 2050 50  0001 C CNN
F 3 "" H 5100 2050 50  0001 C CNN
	1    5100 2050
	0    -1   -1   0   
$EndComp
Text GLabel 5100 2800 2    50   Input ~ 0
CURRENT2
Text GLabel 5100 2650 2    50   Input ~ 0
CURRENT1
$Comp
L Device:R R7
U 1 1 5DC8D31F
P 5250 2950
F 0 "R7" V 5200 2950 50  0000 C CNN
F 1 "10k" V 5250 2950 50  0000 C CNN
F 2 "" V 5180 2950 50  0001 C CNN
F 3 "~" H 5250 2950 50  0001 C CNN
	1    5250 2950
	0    1    1    0   
$EndComp
Text GLabel 5400 2950 2    50   Input ~ 0
IN1
Text GLabel 5400 3100 2    50   Input ~ 0
IN2
Text GLabel 5400 2350 2    50   Input ~ 0
INH1
Text GLabel 5400 2500 2    50   Input ~ 0
INH2
$Comp
L Device:R R8
U 1 1 5DC93355
P 5250 3100
F 0 "R8" V 5200 3100 50  0000 C CNN
F 1 "10k" V 5250 3100 50  0000 C CNN
F 2 "" V 5180 3100 50  0001 C CNN
F 3 "~" H 5250 3100 50  0001 C CNN
	1    5250 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5DC93619
P 5250 2350
F 0 "R5" V 5200 2350 50  0000 C CNN
F 1 "10k" V 5250 2350 50  0000 C CNN
F 2 "" V 5180 2350 50  0001 C CNN
F 3 "~" H 5250 2350 50  0001 C CNN
	1    5250 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5DC93D42
P 5250 2500
F 0 "R6" V 5200 2500 50  0000 C CNN
F 1 "10k" V 5250 2500 50  0000 C CNN
F 2 "" V 5180 2500 50  0001 C CNN
F 3 "~" H 5250 2500 50  0001 C CNN
	1    5250 2500
	0    1    1    0   
$EndComp
$EndSCHEMATC
