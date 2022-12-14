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
L power:GND #PWR01
U 1 1 6347593C
P 4300 3950
F 0 "#PWR01" H 4300 3700 50  0001 C CNN
F 1 "GND" H 4305 3777 50  0000 C CNN
F 2 "" H 4300 3950 50  0001 C CNN
F 3 "" H 4300 3950 50  0001 C CNN
	1    4300 3950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 63475F2C
P 4600 1550
F 0 "#FLG02" H 4600 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 4600 1723 50  0000 C CNN
F 2 "" H 4600 1550 50  0001 C CNN
F 3 "~" H 4600 1550 50  0001 C CNN
	1    4600 1550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 634761B9
P 4550 3950
F 0 "#FLG01" H 4550 4025 50  0001 C CNN
F 1 "PWR_FLAG" H 4550 4123 50  0000 C CNN
F 2 "" H 4550 3950 50  0001 C CNN
F 3 "~" H 4550 3950 50  0001 C CNN
	1    4550 3950
	-1   0    0    1   
$EndComp
$Comp
L MCU_Module:WeMos_D1_mini U1
U 1 1 6347776E
P 4500 2650
F 0 "U1" H 4500 1761 50  0000 C CNN
F 1 "WeMos_D1_mini" H 4500 1670 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 4500 1500 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 2650 1500 50  0001 C CNN
	1    4500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3950 4300 3800
Wire Wire Line
	4550 3800 4550 3950
Wire Wire Line
	4500 3450 4500 3500
Connection ~ 4500 3800
Wire Wire Line
	4500 3800 4550 3800
$Comp
L power:+5V #PWR02
U 1 1 6348A4CC
P 4400 1550
F 0 "#PWR02" H 4400 1400 50  0001 C CNN
F 1 "+5V" H 4415 1723 50  0000 C CNN
F 2 "" H 4400 1550 50  0001 C CNN
F 3 "" H 4400 1550 50  0001 C CNN
	1    4400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1550 4400 1650
$Comp
L Transistor_BJT:2N3904 Q4
U 1 1 63499C30
P 7050 3800
F 0 "Q4" H 7240 3846 50  0000 L CNN
F 1 "2N3904" H 7240 3755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7250 3725 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 7050 3800 50  0001 L CNN
	1    7050 3800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 6349A1B6
P 6300 3050
F 0 "Q3" H 6490 3096 50  0000 L CNN
F 1 "2N3904" H 6490 3005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6500 2975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 6300 3050 50  0001 L CNN
	1    6300 3050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 6349947C
P 5600 2250
F 0 "Q1" H 5790 2296 50  0000 L CNN
F 1 "2N3904" H 5790 2205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5800 2175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 5600 2250 50  0001 L CNN
	1    5600 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 634AFA02
P 5150 2250
F 0 "R2" V 4943 2250 50  0000 C CNN
F 1 "1k" V 5034 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5080 2250 50  0001 C CNN
F 3 "~" H 5150 2250 50  0001 C CNN
	1    5150 2250
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4001 D3
U 1 1 634B6B8E
P 5700 1750
F 0 "D3" V 5654 1830 50  0000 L CNN
F 1 "1N4001" V 5745 1830 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5700 1575 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5700 1750 50  0001 C CNN
	1    5700 1750
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 634B76CA
P 7900 1550
F 0 "J2" H 7980 1592 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 7980 1501 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3-5.08_1x03_P5.08mm_Horizontal" H 7900 1550 50  0001 C CNN
F 3 "~" H 7900 1550 50  0001 C CNN
	1    7900 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J4
U 1 1 634B8E5D
P 8600 2300
F 0 "J4" H 8680 2342 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 8680 2251 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3-5.08_1x03_P5.08mm_Horizontal" H 8600 2300 50  0001 C CNN
F 3 "~" H 8600 2300 50  0001 C CNN
	1    8600 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2250 5000 2250
Wire Wire Line
	5300 2250 5400 2250
Wire Wire Line
	5700 1900 5700 1950
Wire Wire Line
	5700 1600 5700 1500
Wire Wire Line
	6200 1500 6200 1550
Wire Wire Line
	5700 2450 5950 2450
Wire Wire Line
	6400 2700 6400 2800
Wire Wire Line
	6400 2400 6400 2350
Wire Wire Line
	6400 2350 6600 2350
Wire Wire Line
	6800 2350 6800 2400
$Comp
L Device:R R3
U 1 1 634EEAFE
P 5750 3050
F 0 "R3" V 5543 3050 50  0000 C CNN
F 1 "1k" V 5634 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5680 3050 50  0001 C CNN
F 3 "~" H 5750 3050 50  0001 C CNN
	1    5750 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 3050 6100 3050
Wire Wire Line
	4900 2350 5550 2350
Wire Wire Line
	5550 2350 5550 3050
Wire Wire Line
	5550 3050 5600 3050
Wire Wire Line
	6400 3250 6400 3300
Wire Wire Line
	6400 3300 6650 3300
$Comp
L Device:R R5
U 1 1 634FAB0F
P 6500 3800
F 0 "R5" V 6293 3800 50  0000 C CNN
F 1 "1k" V 6384 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6430 3800 50  0001 C CNN
F 3 "~" H 6500 3800 50  0001 C CNN
	1    6500 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 3800 6850 3800
Wire Wire Line
	4900 2450 5450 2450
Wire Wire Line
	5450 2450 5450 3800
Wire Wire Line
	5450 3800 6350 3800
$Comp
L Diode:1N4001 D6
U 1 1 6350915D
P 7150 3350
F 0 "D6" V 7104 3430 50  0000 L CNN
F 1 "1N4001" V 7195 3430 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 7150 3175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7150 3350 50  0001 C CNN
	1    7150 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 3200 7150 3150
Wire Wire Line
	7150 3150 7450 3150
Wire Wire Line
	7750 3150 7750 3200
Wire Wire Line
	7150 4000 7150 4150
Wire Wire Line
	7150 4150 7450 4150
Wire Wire Line
	4600 1550 4600 1650
Wire Wire Line
	4600 1650 4400 1650
Connection ~ 4400 1650
Wire Wire Line
	5700 1500 5950 1500
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 634997F1
P 6250 5150
F 0 "Q2" H 6440 5196 50  0000 L CNN
F 1 "2N3904" H 6440 5105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6450 5075 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 6250 5150 50  0001 L CNN
	1    6250 5150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4001 D5
U 1 1 634E933B
P 6400 2550
F 0 "D5" V 6354 2630 50  0000 L CNN
F 1 "1N4001" V 6445 2630 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6400 2375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6400 2550 50  0001 C CNN
	1    6400 2550
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4001 D4
U 1 1 6354281C
P 6350 4700
F 0 "D4" V 6304 4780 50  0000 L CNN
F 1 "1N4001" V 6395 4780 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6350 4525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6350 4700 50  0001 C CNN
	1    6350 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 4550 6350 4500
Wire Wire Line
	6350 4500 6650 4500
Wire Wire Line
	6850 4500 6850 4550
Wire Wire Line
	6350 4850 6350 4950
Wire Wire Line
	6350 5350 6350 5400
Wire Wire Line
	6350 5400 6650 5400
$Comp
L Device:R R4
U 1 1 6354633C
P 5750 5150
F 0 "R4" V 5543 5150 50  0000 C CNN
F 1 "1k" V 5634 5150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5680 5150 50  0001 C CNN
F 3 "~" H 5750 5150 50  0001 C CNN
	1    5750 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 5150 6050 5150
Wire Wire Line
	5600 5150 5400 5150
Wire Wire Line
	5400 5150 5400 2550
Wire Wire Line
	5400 2550 4900 2550
Wire Wire Line
	4400 1650 4250 1650
Wire Wire Line
	4250 1650 4250 1250
Wire Wire Line
	4250 1250 5950 1250
Wire Wire Line
	5950 1250 5950 1500
Connection ~ 5950 1500
Wire Wire Line
	5950 1500 6200 1500
Wire Wire Line
	5950 1250 7000 1250
Wire Wire Line
	7000 1250 7000 2300
Wire Wire Line
	7000 2300 6600 2300
Wire Wire Line
	6600 2300 6600 2350
Connection ~ 5950 1250
Connection ~ 6600 2350
Wire Wire Line
	6600 2350 6800 2350
Wire Wire Line
	7450 2300 7450 3000
Connection ~ 7000 2300
Connection ~ 7450 3150
Wire Wire Line
	7450 3150 7750 3150
Wire Wire Line
	7450 3000 8500 3000
Wire Wire Line
	8500 3000 8500 4300
Wire Wire Line
	8500 4300 6650 4300
Wire Wire Line
	6650 4300 6650 4500
Connection ~ 7450 3000
Wire Wire Line
	7450 3000 7450 3150
Connection ~ 6650 4500
Wire Wire Line
	6650 4500 6850 4500
Wire Wire Line
	5300 5500 6650 5500
Wire Wire Line
	6650 5500 6650 5400
Connection ~ 4550 3800
Wire Wire Line
	4550 3800 5300 3800
Wire Wire Line
	5300 4200 6800 4200
Wire Wire Line
	7450 4200 7450 4150
Wire Wire Line
	5300 3800 5300 4200
Connection ~ 5300 4200
Wire Wire Line
	5300 4200 5300 5500
Wire Wire Line
	6800 4200 6800 3500
Wire Wire Line
	6800 3500 6650 3500
Wire Wire Line
	6650 3500 6650 3400
Connection ~ 6800 4200
Wire Wire Line
	6800 4200 7450 4200
Wire Wire Line
	5950 2450 5950 3400
Wire Wire Line
	5950 3400 6650 3400
Connection ~ 6650 3400
Wire Wire Line
	6650 3400 6650 3300
Wire Wire Line
	3600 1800 4400 1800
Wire Wire Line
	4400 1650 4400 1800
Connection ~ 4400 1800
Wire Wire Line
	4400 1800 4400 1850
Wire Wire Line
	3200 3500 4500 3500
Connection ~ 4500 3500
Wire Wire Line
	4500 3500 4500 3800
$Comp
L Connector:Screw_Terminal_01x03 J5
U 1 1 6352A82A
P 9300 3600
F 0 "J5" H 9380 3642 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 9380 3551 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3-5.08_1x03_P5.08mm_Horizontal" H 9300 3600 50  0001 C CNN
F 3 "~" H 9300 3600 50  0001 C CNN
	1    9300 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 6352B299
P 8450 4850
F 0 "J3" H 8530 4892 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 8530 4801 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3-5.08_1x03_P5.08mm_Horizontal" H 8450 4850 50  0001 C CNN
F 3 "~" H 8450 4850 50  0001 C CNN
	1    8450 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4550 7150 4500
Wire Wire Line
	7150 4500 8250 4500
Wire Wire Line
	8250 4500 8250 4750
Wire Wire Line
	7350 4550 8000 4550
Wire Wire Line
	8000 4550 8000 4850
Wire Wire Line
	8000 4850 8250 4850
Wire Wire Line
	7250 5150 8250 5150
Wire Wire Line
	8250 5150 8250 4950
Wire Wire Line
	8050 3200 8050 2850
Wire Wire Line
	8050 2850 9100 2850
Wire Wire Line
	9100 2850 9100 3500
Wire Wire Line
	8250 3200 9000 3200
Wire Wire Line
	9000 3200 9000 3600
Wire Wire Line
	9000 3600 9100 3600
Wire Wire Line
	8150 3800 9100 3800
Wire Wire Line
	9100 3800 9100 3700
Wire Wire Line
	7100 2400 7200 2400
Wire Wire Line
	7200 2400 7200 2200
Wire Wire Line
	7200 2200 8400 2200
Wire Wire Line
	7000 2300 7450 2300
Wire Wire Line
	8400 2300 7650 2300
Wire Wire Line
	7650 2300 7650 2400
Wire Wire Line
	7650 2400 7300 2400
Wire Wire Line
	7200 3000 7400 3000
Wire Wire Line
	7400 3000 7400 2950
Wire Wire Line
	7400 2950 7950 2950
Wire Wire Line
	7950 2950 7950 2400
Wire Wire Line
	7950 2400 8400 2400
Wire Wire Line
	6500 1550 6500 1400
Wire Wire Line
	6500 1400 7700 1400
Wire Wire Line
	7700 1400 7700 1450
Wire Wire Line
	6700 1550 7700 1550
Wire Wire Line
	6600 2150 7700 2150
Wire Wire Line
	7700 2150 7700 1650
$Comp
L Device:R R1
U 1 1 6358E27C
P 2950 1000
F 0 "R1" H 3020 1046 50  0000 L CNN
F 1 "10k" H 3020 955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2880 1000 50  0001 C CNN
F 3 "~" H 2950 1000 50  0001 C CNN
	1    2950 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6358F769
P 2950 1450
F 0 "C3" H 3065 1496 50  0000 L CNN
F 1 "100nf" H 3065 1405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 2988 1300 50  0001 C CNN
F 3 "~" H 2950 1450 50  0001 C CNN
	1    2950 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1600 2950 1750
Wire Wire Line
	2950 850  4900 850 
Wire Wire Line
	4900 1850 4600 1850
$Comp
L Switch:SW_Push SW1
U 1 1 635A383D
P 2550 1400
F 0 "SW1" V 2596 1352 50  0000 R CNN
F 1 "SW_Push" V 2505 1352 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2550 1600 50  0001 C CNN
F 3 "~" H 2550 1600 50  0001 C CNN
	1    2550 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 1200 2950 1200
Wire Wire Line
	2950 1150 2950 1200
Connection ~ 2950 1200
Wire Wire Line
	2950 1200 2950 1300
Wire Wire Line
	2550 1600 2550 1750
Wire Wire Line
	2550 1750 2950 1750
Wire Wire Line
	4100 2250 4100 1200
Wire Wire Line
	4100 1200 2950 1200
Wire Wire Line
	7150 3500 7150 3550
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 63647860
P 2500 2800
F 0 "J1" H 2418 2475 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2418 2566 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 2500 2800 50  0001 C CNN
F 3 "~" H 2500 2800 50  0001 C CNN
	1    2500 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 2700 3600 2700
Wire Wire Line
	3600 2700 3600 1800
Wire Wire Line
	2700 2800 3200 2800
Wire Wire Line
	3200 2800 3200 3500
Wire Wire Line
	2950 1750 3350 1750
Wire Wire Line
	3350 1750 3350 3800
Wire Wire Line
	3350 3800 4300 3800
Connection ~ 2950 1750
Connection ~ 4300 3800
Wire Wire Line
	4300 3800 4500 3800
NoConn ~ 4900 2650
NoConn ~ 4900 2750
NoConn ~ 4900 2850
NoConn ~ 4900 2950
NoConn ~ 4900 3050
NoConn ~ 4900 2150
NoConn ~ 4100 2550
NoConn ~ 4100 2650
Wire Wire Line
	4900 850  4900 1850
$Comp
L Relay:SANYOU_SRD_Form_C K4
U 1 1 636E7632
P 7950 3500
F 0 "K4" H 8380 3546 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 8380 3455 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 8400 3450 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 7950 3500 50  0001 C CNN
	1    7950 3500
	1    0    0    -1  
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_C K2
U 1 1 636EC959
P 7000 2700
F 0 "K2" H 7430 2746 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 7430 2655 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 7450 2650 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 7000 2700 50  0001 C CNN
	1    7000 2700
	1    0    0    -1  
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_C K1
U 1 1 636ED53F
P 6400 1850
F 0 "K1" H 6830 1896 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 6830 1805 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6850 1800 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 6400 1850 50  0001 C CNN
	1    6400 1850
	1    0    0    -1  
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_C K3
U 1 1 636EDBA0
P 7050 4850
F 0 "K3" H 7480 4896 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 7480 4805 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 7500 4800 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 7050 4850 50  0001 C CNN
	1    7050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5200 6550 4950
Wire Wire Line
	6550 4950 6350 4950
Connection ~ 6350 4950
Wire Wire Line
	6850 5150 6850 5200
Wire Wire Line
	7750 3800 7400 3800
Wire Wire Line
	7400 3800 7400 3550
Wire Wire Line
	7400 3550 7150 3550
Connection ~ 7150 3550
Wire Wire Line
	7150 3550 7150 3600
Wire Wire Line
	6200 2150 5900 2150
Wire Wire Line
	5900 2150 5900 1950
Wire Wire Line
	5900 1950 5700 1950
Connection ~ 5700 1950
Wire Wire Line
	5700 1950 5700 2050
Wire Wire Line
	6850 5200 6550 5200
Wire Wire Line
	6800 3000 6500 3000
Wire Wire Line
	6500 3000 6500 2800
Wire Wire Line
	6500 2800 6400 2800
Connection ~ 6400 2800
Wire Wire Line
	6400 2800 6400 2850
$EndSCHEMATC
