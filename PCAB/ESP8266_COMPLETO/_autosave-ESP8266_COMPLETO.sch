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
L Connector:USB_B_Micro J1
U 1 1 634C91CE
P 4700 2850
F 0 "J1" H 4757 3317 50  0000 C CNN
F 1 "USB_B_Micro" H 4757 3226 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-AB_Molex_47590-0001" H 4850 2800 50  0001 C CNN
F 3 "~" H 4850 2800 50  0001 C CNN
	1    4700 2850
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32 U1
U 1 1 634CB6F6
P 6350 3550
F 0 "U1" H 6350 5131 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 6350 5040 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 6350 2050 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 6050 3600 50  0001 C CNN
	1    6350 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_A J?
U 1 1 634C6C8E
P 8500 3050
F 0 "J?" H 8557 3517 50  0000 C CNN
F 1 "USB_A" H 8557 3426 50  0000 C CNN
F 2 "" H 8650 3000 50  0001 C CNN
F 3 " ~" H 8650 3000 50  0001 C CNN
	1    8500 3050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
