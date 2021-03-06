EESchema Schematic File Version 4
LIBS:sunrise-board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Sunrise Alarm"
Date "2019-06-04"
Rev "v1"
Comp ""
Comment1 "Arduino Mini and Arduino Pro Mini design by Team Arduino and Spark Fun Electronics"
Comment2 "creativecommons.org/licenses/by-nc-sa/4.0"
Comment3 "Licence: CC BY-NC-SA"
Comment4 "Author: Tobin Yehle"
$EndDescr
$Comp
L Transistor_FET:IRLZ34N Q1
U 1 1 5C6E62AB
P 2400 4000
F 0 "Q1" H 2605 4046 50  0000 L CNN
F 1 "STP16NF06" H 2605 3955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2650 3925 50  0001 L CIN
F 3 "https://www.st.com/resource/en/datasheet/cd00002501.pdf" H 2400 4000 50  0001 L CNN
F 4 "https://www.mouser.com/ProductDetail/STP16NF06" H 0   0   50  0001 C CNN "Link"
F 5 "STP16NF06" H 0   0   50  0001 C CNN "PartNumber"
	1    2400 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5C6E67AC
P 1900 4150
F 0 "R1" H 1968 4196 50  0000 L CNN
F 1 "10k" H 1968 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1940 4140 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/throughhole/Yageo_LR_CFR_2013.pdf" H 1900 4150 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/CFR-25JT-52-10K" H 0   0   50  0001 C CNN "Link"
F 5 "CFR-25JT-52-10K" H 0   0   50  0001 C CNN "PartNumber"
	1    1900 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C6E6917
P 1900 4300
F 0 "#PWR02" H 1900 4050 50  0001 C CNN
F 1 "GND" H 1905 4127 50  0000 C CNN
F 2 "" H 1900 4300 50  0001 C CNN
F 3 "" H 1900 4300 50  0001 C CNN
	1    1900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4000 1900 4000
Connection ~ 1900 4000
Wire Wire Line
	2500 3750 2500 3800
Wire Wire Line
	1900 4000 2200 4000
$Comp
L Transistor_FET:IRLZ34N Q2
U 1 1 5C6E6C5B
P 2400 4850
F 0 "Q2" H 2605 4896 50  0000 L CNN
F 1 "STP16NF06" H 2605 4805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2650 4775 50  0001 L CIN
F 3 "https://www.st.com/resource/en/datasheet/cd00002501.pdf" H 2400 4850 50  0001 L CNN
F 4 "https://www.mouser.com/ProductDetail/STP16NF06" H 0   0   50  0001 C CNN "Link"
F 5 "STP16NF06" H 0   0   50  0001 C CNN "PartNumber"
	1    2400 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5C6E6C62
P 1900 5000
F 0 "R2" H 1968 5046 50  0000 L CNN
F 1 "10k" H 1968 4955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1940 4990 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/throughhole/Yageo_LR_CFR_2013.pdf" H 1900 5000 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/CFR-25JT-52-10K" H 0   0   50  0001 C CNN "Link"
F 5 "CFR-25JT-52-10K" H 0   0   50  0001 C CNN "PartNumber"
	1    1900 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5C6E6C69
P 1900 5150
F 0 "#PWR03" H 1900 4900 50  0001 C CNN
F 1 "GND" H 1905 4977 50  0000 C CNN
F 2 "" H 1900 5150 50  0001 C CNN
F 3 "" H 1900 5150 50  0001 C CNN
	1    1900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4850 1900 4850
Connection ~ 1900 4850
Wire Wire Line
	2500 4600 2500 4650
Wire Wire Line
	1900 4850 2200 4850
$Comp
L Transistor_FET:IRLZ34N Q3
U 1 1 5C6E6D48
P 2400 5700
F 0 "Q3" H 2605 5746 50  0000 L CNN
F 1 "STP16NF06" H 2605 5655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2650 5625 50  0001 L CIN
F 3 "https://www.st.com/resource/en/datasheet/cd00002501.pdf" H 2400 5700 50  0001 L CNN
F 4 "https://www.mouser.com/ProductDetail/STP16NF06" H 0   0   50  0001 C CNN "Link"
F 5 "STP16NF06" H 0   0   50  0001 C CNN "PartNumber"
	1    2400 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5C6E6D4F
P 1900 5850
F 0 "R3" H 1968 5896 50  0000 L CNN
F 1 "10k" H 1968 5805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1940 5840 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/throughhole/Yageo_LR_CFR_2013.pdf" H 1900 5850 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/CFR-25JT-52-10K" H 0   0   50  0001 C CNN "Link"
F 5 "CFR-25JT-52-10K" H 0   0   50  0001 C CNN "PartNumber"
	1    1900 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C6E6D56
P 1900 6000
F 0 "#PWR04" H 1900 5750 50  0001 C CNN
F 1 "GND" H 1905 5827 50  0000 C CNN
F 2 "" H 1900 6000 50  0001 C CNN
F 3 "" H 1900 6000 50  0001 C CNN
	1    1900 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5700 1900 5700
Connection ~ 1900 5700
Wire Wire Line
	2500 5450 2500 5500
Wire Wire Line
	1900 5700 2200 5700
$Comp
L Connector:Barrel_Jack J1
U 1 1 5C6E83EF
P 1350 1650
F 0 "J1" H 1405 1975 50  0000 C CNN
F 1 "2.1mm Jack" H 1405 1884 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1400 1610 50  0001 C CNN
F 3 "https://www.cui.com/product/resource/pj-102a.pdf" H 1400 1610 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/PJ-102A" H 0   0   50  0001 C CNN "Link"
F 5 "PJ-102A" H 0   0   50  0001 C CNN "PartNumber"
	1    1350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4600 2500 4600
Wire Wire Line
	2800 5450 2500 5450
Wire Wire Line
	2500 3750 2800 3750
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U3
U 1 1 5CF1E7C2
P 6200 3000
F 0 "U3" H 5559 3046 50  0000 R CNN
F 1 "ATmega328P-PU" H 5559 2955 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 6200 3000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega48A-PA-88A-PA-168A-PA-328-P-DS-DS40002061A.pdf" H 6200 3000 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/ATMEGA328P-PU" H 0   0   50  0001 C CNN "Link"
F 5 "ATMEGA328P-PU" H 0   0   50  0001 C CNN "PartNumber"
	1    6200 3000
	1    0    0    -1  
$EndComp
$Comp
L Timer_RTC:DS1307+ U2
U 1 1 5CF1ED9A
P 4950 6600
F 0 "U2" H 5491 6646 50  0000 L CNN
F 1 "DS1307+" H 5491 6555 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4950 6100 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1307.pdf" H 4950 6400 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/700-DS1307" H 4950 6600 50  0001 C CNN "Link"
F 5 "DS1307+" H 0   0   50  0001 C CNN "PartNumber"
	1    4950 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5CF1EFD4
P 4200 6850
F 0 "Y1" V 4150 6700 50  0000 R CNN
F 1 "32.768kHz" V 4250 6700 50  0000 R CNN
F 2 "Crystal:Crystal_C26-LF_D2.1mm_L6.5mm_Horizontal_1EP_style2" H 4200 6850 50  0001 C CNN
F 3 "https://www.iqdfrequencyproducts.com/products/pn/LFXTAL002997Bulk.pdf" H 4200 6850 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/449-LFXTAL002997BULK" H -250 250 50  0001 C CNN "Link"
F 5 "LFXTAL002997Bulk" H 0   0   50  0001 C CNN "PartNumber"
	1    4200 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 6800 4450 7000
Wire Wire Line
	4450 7000 4200 7000
Wire Wire Line
	4450 6700 4200 6700
$Comp
L power:GND #PWR017
U 1 1 5CF2019F
P 4950 7000
F 0 "#PWR017" H 4950 6750 50  0001 C CNN
F 1 "GND" H 4955 6827 50  0000 C CNN
F 2 "" H 4950 7000 50  0001 C CNN
F 3 "" H 4950 7000 50  0001 C CNN
	1    4950 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5CF20381
P 6200 4500
F 0 "#PWR023" H 6200 4250 50  0001 C CNN
F 1 "GND" H 6205 4327 50  0000 C CNN
F 2 "" H 6200 4500 50  0001 C CNN
F 3 "" H 6200 4500 50  0001 C CNN
	1    6200 4500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 5CF20678
P 4850 5700
F 0 "#PWR016" H 4850 5550 50  0001 C CNN
F 1 "VCC" H 4867 5873 50  0000 C CNN
F 2 "" H 4850 5700 50  0001 C CNN
F 3 "" H 4850 5700 50  0001 C CNN
	1    4850 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5CF22BF2
P 7550 2750
F 0 "#PWR024" H 7550 2500 50  0001 C CNN
F 1 "GND" H 7555 2577 50  0000 C CNN
F 2 "" H 7550 2750 50  0001 C CNN
F 3 "" H 7550 2750 50  0001 C CNN
	1    7550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2400 7300 2450
$Comp
L Device:C C4
U 1 1 5CF258C6
P 5500 1950
F 0 "C4" H 5386 1996 50  0000 R CNN
F 1 "0.1uF" H 5386 1905 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5538 1800 50  0001 C CNN
F 3 "https://www.vishay.com/docs/45171/kseries.pdf" H 5500 1950 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/K104K15X7RF53H5" H 0   0   50  0001 C CNN "Link"
F 5 "K104K15X7RF53H5" H 0   0   50  0001 C CNN "PartNumber"
	1    5500 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5CF25E21
P 5500 2100
F 0 "#PWR019" H 5500 1850 50  0001 C CNN
F 1 "GND" H 5505 1927 50  0000 C CNN
F 2 "" H 5500 2100 50  0001 C CNN
F 3 "" H 5500 2100 50  0001 C CNN
	1    5500 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1800 5500 1800
$Comp
L power:VCC #PWR022
U 1 1 5CF2793B
P 6200 1300
F 0 "#PWR022" H 6200 1150 50  0001 C CNN
F 1 "VCC" H 6217 1473 50  0000 C CNN
F 2 "" H 6200 1300 50  0001 C CNN
F 3 "" H 6200 1300 50  0001 C CNN
	1    6200 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1400 6200 1300
$Comp
L Device:Battery_Cell BT1
U 1 1 5CF29BE6
P 5700 6050
F 0 "BT1" V 5955 6100 50  0000 C CNN
F 1 "CR1220 3.3V" V 5864 6100 50  0000 C CNN
F 2 "Sunrise:BatteryHolder_CR1220_THT" V 5700 6110 50  0001 C CNN
F 3 "https://linxtechnologies.com/wp/wp-content/uploads/bat-hld-012-thm.pdf" V 5700 6110 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/712-BAT-HLD-012-THM" H 300 400 50  0001 C CNN "Link"
F 5 "BAT-HLD-012-THM" H 0   0   50  0001 C CNN "PartNumber"
	1    5700 6050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5CF29DCD
P 5900 6150
F 0 "#PWR018" H 5900 5900 50  0001 C CNN
F 1 "GND" H 5905 5977 50  0000 C CNN
F 2 "" H 5900 6150 50  0001 C CNN
F 3 "" H 5900 6150 50  0001 C CNN
	1    5900 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6200 4850 5700
$Comp
L Device:C C5
U 1 1 5CF2C232
P 5500 4000
F 0 "C5" H 5386 4046 50  0000 R CNN
F 1 "0.1uF" H 5386 3955 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5538 3850 50  0001 C CNN
F 3 "https://www.vishay.com/docs/45171/kseries.pdf" H 5500 4000 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/K104K15X7RF53H5" H 0   0   50  0001 C CNN "Link"
F 5 "K104K15X7RF53H5" H 0   0   50  0001 C CNN "PartNumber"
	1    5500 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5CF2C2BA
P 5500 4150
F 0 "#PWR021" H 5500 3900 50  0001 C CNN
F 1 "GND" H 5505 3977 50  0000 C CNN
F 2 "" H 5500 4150 50  0001 C CNN
F 3 "" H 5500 4150 50  0001 C CNN
	1    5500 4150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR020
U 1 1 5CF2C305
P 5500 3850
F 0 "#PWR020" H 5500 3700 50  0001 C CNN
F 1 "VCC" H 5517 4023 50  0000 C CNN
F 2 "" H 5500 3850 50  0001 C CNN
F 3 "" H 5500 3850 50  0001 C CNN
	1    5500 3850
	1    0    0    -1  
$EndComp
Text GLabel 1750 5700 0    50   Input ~ 0
LED_CTL_B
Text GLabel 1750 4850 0    50   Input ~ 0
LED_CTL_G
Text GLabel 1750 4000 0    50   Input ~ 0
LED_CTL_R
Text GLabel 4050 6500 0    50   Input ~ 0
SDA
Text GLabel 4050 6400 0    50   Input ~ 0
SCL
Wire Wire Line
	4450 6500 4200 6500
NoConn ~ 5450 6600
$Comp
L power:GND #PWR01
U 1 1 5CF35B2B
P 1650 2100
F 0 "#PWR01" H 1650 1850 50  0001 C CNN
F 1 "GND" H 1655 1927 50  0000 C CNN
F 2 "" H 1650 2100 50  0001 C CNN
F 3 "" H 1650 2100 50  0001 C CNN
	1    1650 2100
	1    0    0    -1  
$EndComp
Text GLabel 6900 3200 2    50   Input ~ 0
SCL
Text GLabel 6900 3100 2    50   Input ~ 0
SDA
Wire Wire Line
	6900 3100 6800 3100
Wire Wire Line
	6900 3200 6800 3200
$Comp
L power:VCC #PWR015
U 1 1 5CF3C5AE
P 4400 5700
F 0 "#PWR015" H 4400 5550 50  0001 C CNN
F 1 "VCC" H 4417 5873 50  0000 C CNN
F 2 "" H 4400 5700 50  0001 C CNN
F 3 "" H 4400 5700 50  0001 C CNN
	1    4400 5700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 5CF3C5DD
P 4200 5700
F 0 "#PWR014" H 4200 5550 50  0001 C CNN
F 1 "VCC" H 4217 5873 50  0000 C CNN
F 2 "" H 4200 5700 50  0001 C CNN
F 3 "" H 4200 5700 50  0001 C CNN
	1    4200 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6100 4400 6400
Connection ~ 4400 6400
Wire Wire Line
	4400 6400 4450 6400
Wire Wire Line
	4050 6400 4400 6400
Wire Wire Line
	4200 6100 4200 6500
Connection ~ 4200 6500
Wire Wire Line
	4200 6500 4050 6500
$Comp
L Device:CP1 C1
U 1 1 5CF4313F
P 2000 1700
F 0 "C1" H 2115 1746 50  0000 L CNN
F 1 "10uF" H 2115 1655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 2000 1700 50  0001 C CNN
F 3 "http://nichicon-us.com/english/products/pdfs/e-usa_usr.pdf" H 2000 1700 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/USR1E100MDD1TP" H 0   0   50  0001 C CNN "Link"
F 5 "USR1E100MDD1TP" H 0   0   50  0001 C CNN "PartNumber"
	1    2000 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5CF431DD
P 4050 1700
F 0 "C3" H 4165 1746 50  0000 L CNN
F 1 "0.1uF" H 4165 1655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4088 1550 50  0001 C CNN
F 3 "https://www.vishay.com/docs/45171/kseries.pdf" H 4050 1700 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/K104K15X7RF53H5" H 0   0   50  0001 C CNN "Link"
F 5 "K104K15X7RF53H5" H 0   0   50  0001 C CNN "PartNumber"
	1    4050 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5CF43AD6
P 4050 1850
F 0 "#PWR012" H 4050 1600 50  0001 C CNN
F 1 "GND" H 4055 1677 50  0000 C CNN
F 2 "" H 4050 1850 50  0001 C CNN
F 3 "" H 4050 1850 50  0001 C CNN
	1    4050 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1550 1650 1550
Wire Wire Line
	2000 1550 2000 1050
Connection ~ 2000 1550
$Comp
L Regulator_Linear:uA7805 U1
U 1 1 5CF45A5F
P 2650 1550
F 0 "U1" H 2650 1792 50  0000 C CNN
F 1 "L4931CZ50-AP" H 2650 1701 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 2675 1400 50  0001 L CIN
F 3 "https://www.st.com/resource/en/datasheet/l4931.pdf" H 2650 1500 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/511-L4931CZ50-AP" H 0   0   50  0001 C CNN "Link"
F 5 "L4931CZ50-AP" H 0   0   50  0001 C CNN "PartNumber"
	1    2650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1550 2000 1550
$Comp
L power:GND #PWR09
U 1 1 5CF47103
P 2650 1850
F 0 "#PWR09" H 2650 1600 50  0001 C CNN
F 1 "GND" H 2655 1677 50  0000 C CNN
F 2 "" H 2650 1850 50  0001 C CNN
F 3 "" H 2650 1850 50  0001 C CNN
	1    2650 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C2
U 1 1 5CF47138
P 3600 1700
F 0 "C2" H 3715 1746 50  0000 L CNN
F 1 "10uF" H 3715 1655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 3600 1700 50  0001 C CNN
F 3 "http://nichicon-us.com/english/products/pdfs/e-usa_usr.pdf" H 3600 1700 50  0001 C CNN
F 4 "USR1E100MDD1TP" H 3600 1700 50  0001 C CNN "PartNumber"
F 5 "https://www.mouser.com/ProductDetail/USR1E100MDD1TP" H 0   0   50  0001 C CNN "Link"
	1    3600 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5CF49190
P 3600 1850
F 0 "#PWR011" H 3600 1600 50  0001 C CNN
F 1 "GND" H 3605 1677 50  0000 C CNN
F 2 "" H 3600 1850 50  0001 C CNN
F 3 "" H 3600 1850 50  0001 C CNN
	1    3600 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5CF491C7
P 2000 1850
F 0 "#PWR05" H 2000 1600 50  0001 C CNN
F 1 "GND" H 2005 1677 50  0000 C CNN
F 2 "" H 2000 1850 50  0001 C CNN
F 3 "" H 2000 1850 50  0001 C CNN
	1    2000 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5CF4A863
P 3050 1700
F 0 "D1" V 3088 1583 50  0000 R CNN
F 1 "LED" V 2997 1583 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 3050 1700 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS-20-92-0241/4222N.pdf" H 3050 1700 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/LTL-4222N" H 0   0   50  0001 C CNN "Link"
F 5 "LTL-4222N" H 0   0   50  0001 C CNN "PartNumber"
	1    3050 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5CF4D57B
P 3050 2350
F 0 "#PWR010" H 3050 2100 50  0001 C CNN
F 1 "GND" H 3055 2177 50  0000 C CNN
F 2 "" H 3050 2350 50  0001 C CNN
F 3 "" H 3050 2350 50  0001 C CNN
	1    3050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1850 3050 1950
Wire Wire Line
	3050 2250 3050 2350
Wire Wire Line
	2950 1550 3050 1550
Connection ~ 3050 1550
Wire Wire Line
	3050 1550 3600 1550
Connection ~ 3600 1550
Wire Wire Line
	3600 1550 4050 1550
$Comp
L power:VCC #PWR013
U 1 1 5CF5722B
P 4350 1300
F 0 "#PWR013" H 4350 1150 50  0001 C CNN
F 1 "VCC" H 4367 1473 50  0000 C CNN
F 2 "" H 4350 1300 50  0001 C CNN
F 3 "" H 4350 1300 50  0001 C CNN
	1    4350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1550 4350 1550
Wire Wire Line
	4350 1550 4350 1300
Connection ~ 4050 1550
$Comp
L Switch:SW_SPST SW1
U 1 1 5CF5ADC7
P 8350 5650
F 0 "SW1" V 8396 5562 50  0000 R CNN
F 1 "Reset" V 8305 5562 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8350 5650 50  0001 C CNN
F 3 "https://www.alps.com/prod/info/E/HTML/Tact/SnapIn/SKHH/SKHHAJA010.html" H 8350 5650 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/SKHHAJA010" H 0   0   50  0001 C CNN "Link"
F 5 "SKHHAJA010" H 0   0   50  0001 C CNN "PartNumber"
	1    8350 5650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 5CF5AFAC
P 3050 2100
F 0 "R4" H 3118 2146 50  0000 L CNN
F 1 "10k" H 3118 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3090 2090 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/throughhole/Yageo_LR_CFR_2013.pdf" H 3050 2100 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/CFR-25JT-52-10K" H 0   0   50  0001 C CNN "Link"
F 5 "CFR-25JT-52-10K" H 0   0   50  0001 C CNN "PartNumber"
	1    3050 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:Resonator Y2
U 1 1 5CF5C334
P 7300 2600
F 0 "Y2" V 7600 2500 50  0000 R CNN
F 1 "16MHz" V 7500 2500 50  0000 R CNN
F 2 "Crystal:Resonator-3Pin_W6.0mm_H3.0mm" H 7275 2600 50  0001 C CNN
F 3 "https://www.murata.com/en-us/api/pdfdownloadapi?partno=CSTLS16M0X55-A0" H 7275 2600 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/81-CSTLS16M0X55-A0" H 0   0   50  0001 C CNN "Link"
F 5 "CSTLS16M0X55-A0" H 0   0   50  0001 C CNN "PartNumber"
	1    7300 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R6
U 1 1 5CF5C3E8
P 4400 5950
F 0 "R6" H 4468 5996 50  0000 L CNN
F 1 "10k" H 4468 5905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4440 5940 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/throughhole/Yageo_LR_CFR_2013.pdf" H 4400 5950 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/CFR-25JT-52-10K" H -250 250 50  0001 C CNN "Link"
F 5 "CFR-25JT-52-10K" H 0   0   50  0001 C CNN "PartNumber"
	1    4400 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 5CF5C547
P 4200 5950
F 0 "R5" H 4133 5996 50  0000 R CNN
F 1 "10k" H 4133 5905 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4240 5940 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/throughhole/Yageo_LR_CFR_2013.pdf" H 4200 5950 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/CFR-25JT-52-10K" H -250 250 50  0001 C CNN "Link"
F 5 "CFR-25JT-52-10K" H 0   0   50  0001 C CNN "PartNumber"
	1    4200 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5800 4200 5700
Wire Wire Line
	4400 5800 4400 5700
Text GLabel 7850 5350 0    50   Input ~ 0
DTR
$Comp
L Device:C C6
U 1 1 5CF65B93
P 8100 5350
F 0 "C6" V 7848 5350 50  0000 C CNN
F 1 "0.1uF" V 7939 5350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8138 5200 50  0001 C CNN
F 3 "https://www.vishay.com/docs/45171/kseries.pdf" H 8100 5350 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/K104K15X7RF53H5" H 0   0   50  0001 C CNN "Link"
F 5 "K104K15X7RF53H5" H 0   0   50  0001 C CNN "PartNumber"
	1    8100 5350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5CF6A978
P 8350 5850
F 0 "#PWR028" H 8350 5600 50  0001 C CNN
F 1 "GND" H 8355 5677 50  0000 C CNN
F 2 "" H 8350 5850 50  0001 C CNN
F 3 "" H 8350 5850 50  0001 C CNN
	1    8350 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 5CF89E24
P 8350 5100
F 0 "R8" H 8282 5146 50  0000 R CNN
F 1 "10k" H 8282 5055 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8390 5090 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/throughhole/Yageo_LR_CFR_2013.pdf" H 8350 5100 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/CFR-25JT-52-10K" H 0   0   50  0001 C CNN "Link"
F 5 "CFR-25JT-52-10K" H 0   0   50  0001 C CNN "PartNumber"
	1    8350 5100
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR027
U 1 1 5CF8A01F
P 8350 4950
F 0 "#PWR027" H 8350 4800 50  0001 C CNN
F 1 "VCC" H 8367 5123 50  0000 C CNN
F 2 "" H 8350 4950 50  0001 C CNN
F 3 "" H 8350 4950 50  0001 C CNN
	1    8350 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8350 5350 8550 5350
Connection ~ 8350 5350
Wire Wire Line
	8350 5350 8350 5450
Text GLabel 6900 2000 2    50   Input ~ 0
D10
Text GLabel 6900 2100 2    50   Input ~ 0
MOSI
Text GLabel 6900 2200 2    50   Input ~ 0
MISO
Text GLabel 6900 2300 2    50   Input ~ 0
SCK
Wire Wire Line
	6900 1800 6800 1800
Wire Wire Line
	6900 1900 6800 1900
Wire Wire Line
	6900 2000 6800 2000
Wire Wire Line
	6900 2100 6800 2100
Wire Wire Line
	6900 2200 6800 2200
Wire Wire Line
	6900 2300 6850 2300
Text GLabel 6900 2700 2    50   Input ~ 0
A0
Text GLabel 6900 2800 2    50   Input ~ 0
A1
Text GLabel 6900 2900 2    50   Input ~ 0
A2
Text GLabel 6900 3000 2    50   Input ~ 0
A3
Wire Wire Line
	6900 2700 6800 2700
Wire Wire Line
	6900 2800 6800 2800
Wire Wire Line
	6900 2900 6800 2900
Wire Wire Line
	6900 3000 6800 3000
Text GLabel 6900 3500 2    50   Input ~ 0
RXI
Text GLabel 6900 3600 2    50   Input ~ 0
TXO
Text GLabel 6900 3700 2    50   Input ~ 0
D2
Text GLabel 6900 3800 2    50   Input ~ 0
LED_CTL_R
Wire Wire Line
	6900 3500 6800 3500
Wire Wire Line
	6900 3600 6800 3600
Wire Wire Line
	6900 3700 6800 3700
Wire Wire Line
	6900 3800 6800 3800
Text GLabel 6900 3900 2    50   Input ~ 0
D4
Text GLabel 6900 4000 2    50   Input ~ 0
D5
Text GLabel 6900 4100 2    50   Input ~ 0
LED_CTL_G
Wire Wire Line
	6900 3900 6800 3900
Wire Wire Line
	6900 4000 6800 4000
Wire Wire Line
	6900 4100 6800 4100
Wire Wire Line
	6900 4200 6800 4200
Wire Wire Line
	8350 5250 8350 5350
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 5CF8E16C
P 9050 3800
F 0 "J3" H 8969 3275 50  0000 C CNN
F 1 "FTDI Basic" H 8969 3366 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9050 3800 50  0001 C CNN
F 3 "http://suddendocs.samtec.com/catalog_english/tsw_th.pdf" H 9050 3800 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/TSW-106-08-T-S-RA" H 0   0   50  0001 C CNN "Link"
F 5 "TSW-106-08-T-S-RA" H 0   0   50  0001 C CNN "PartNumber"
	1    9050 3800
	1    0    0    1   
$EndComp
Text GLabel 8750 3700 0    50   Input ~ 0
RXI
Text GLabel 8750 3600 0    50   Input ~ 0
TXO
Text GLabel 8750 3500 0    50   Input ~ 0
DTR
Wire Wire Line
	8850 4100 8850 4000
Wire Wire Line
	8850 4000 8850 3900
Wire Wire Line
	8750 3700 8850 3700
Wire Wire Line
	8750 3600 8850 3600
Wire Wire Line
	8750 3500 8850 3500
$Comp
L power:VCC #PWR029
U 1 1 5CFA51A2
P 8400 3700
F 0 "#PWR029" H 8400 3550 50  0001 C CNN
F 1 "VCC" H 8418 3873 50  0000 C CNN
F 2 "" H 8400 3700 50  0001 C CNN
F 3 "" H 8400 3700 50  0001 C CNN
	1    8400 3700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5CFA52A0
P 8850 4100
F 0 "#PWR030" H 8850 3850 50  0001 C CNN
F 1 "GND" H 8855 3927 50  0000 C CNN
F 2 "" H 8850 4100 50  0001 C CNN
F 3 "" H 8850 4100 50  0001 C CNN
	1    8850 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8850 3800 8400 3800
Wire Wire Line
	8400 3800 8400 3700
Connection ~ 8850 4000
$Comp
L power:GND #PWR06
U 1 1 5D009433
P 2500 4300
F 0 "#PWR06" H 2500 4050 50  0001 C CNN
F 1 "GND" H 2505 4127 50  0000 C CNN
F 2 "" H 2500 4300 50  0001 C CNN
F 3 "" H 2500 4300 50  0001 C CNN
	1    2500 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D0094AA
P 2500 5150
F 0 "#PWR07" H 2500 4900 50  0001 C CNN
F 1 "GND" H 2505 4977 50  0000 C CNN
F 2 "" H 2500 5150 50  0001 C CNN
F 3 "" H 2500 5150 50  0001 C CNN
	1    2500 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D0095C3
P 2500 6000
F 0 "#PWR08" H 2500 5750 50  0001 C CNN
F 1 "GND" H 2505 5827 50  0000 C CNN
F 2 "" H 2500 6000 50  0001 C CNN
F 3 "" H 2500 6000 50  0001 C CNN
	1    2500 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4200 2500 4300
Wire Wire Line
	2500 5050 2500 5150
Wire Wire Line
	2500 5900 2500 6000
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 5D0259AA
P 10350 3600
F 0 "J5" H 10429 3592 50  0000 L CNN
F 1 "Header" H 10429 3501 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10350 3600 50  0001 C CNN
F 3 "http://suddendocs.samtec.com/catalog_english/tsw_th.pdf" H 10350 3600 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/TSW-130-07-T-S" H 0   0   50  0001 C CNN "Link"
F 5 "TSW-130-07-T-S" H 0   0   50  0001 C CNN "PartNumber"
	1    10350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 3500 10150 3500
Wire Wire Line
	6300 1500 6300 1400
Wire Wire Line
	6300 1400 6200 1400
Wire Wire Line
	6200 1400 6200 1500
Connection ~ 6200 1400
Text GLabel 6900 4200 2    50   Input ~ 0
D7
Text GLabel 6900 1800 2    50   Input ~ 0
D8
Text GLabel 6900 1900 2    50   Input ~ 0
LED_CTL_B
Text GLabel 2800 3750 2    50   Input ~ 0
LED_R
Text GLabel 2800 4600 2    50   Input ~ 0
LED_G
Text GLabel 2800 5450 2    50   Input ~ 0
LED_B
Text GLabel 10050 3600 0    50   Input ~ 0
LED_R
Text GLabel 10050 3700 0    50   Input ~ 0
LED_G
Text GLabel 10050 3800 0    50   Input ~ 0
LED_B
Wire Wire Line
	10150 3600 10050 3600
Wire Wire Line
	10150 3700 10050 3700
Wire Wire Line
	10150 3800 10050 3800
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5D085BAF
P 10350 4250
F 0 "J6" H 10430 4242 50  0000 L CNN
F 1 "Header" H 10430 4151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10350 4250 50  0001 C CNN
F 3 "http://suddendocs.samtec.com/catalog_english/tsw_th.pdf" H 10350 4250 50  0001 C CNN
F 4 "~" H 0   0   50  0001 C CNN "Link"
F 5 "~" H 0   0   50  0001 C CNN "PartNumber"
	1    10350 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J2
U 1 1 5D085C47
P 9050 2150
F 0 "J2" H 9150 2200 50  0000 L CNN
F 1 "Header" H 9150 2100 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 9050 2150 50  0001 C CNN
F 3 "http://suddendocs.samtec.com/catalog_english/tsw_th.pdf" H 9050 2150 50  0001 C CNN
F 4 "~" H 0   0   50  0001 C CNN "Link"
F 5 "~" H 0   0   50  0001 C CNN "PartNumber"
	1    9050 2150
	1    0    0    -1  
$EndComp
Text GLabel 10050 4350 0    50   Input ~ 0
SCL
Text GLabel 10050 4250 0    50   Input ~ 0
SDA
Wire Wire Line
	10050 4350 10150 4350
Wire Wire Line
	10050 4250 10150 4250
Text GLabel 8750 1650 0    50   Input ~ 0
TXO
Text GLabel 8750 1750 0    50   Input ~ 0
RXI
Text GLabel 8750 1850 0    50   Input ~ 0
RESET
Wire Wire Line
	8750 1650 8850 1650
Wire Wire Line
	8750 1750 8850 1750
Wire Wire Line
	8750 1850 8850 1850
Wire Wire Line
	8300 1950 8850 1950
Text GLabel 8750 2050 0    50   Input ~ 0
D2
Text GLabel 8750 2150 0    50   Input ~ 0
LED_R
Text GLabel 8750 2250 0    50   Input ~ 0
D4
Wire Wire Line
	8750 2050 8850 2050
Wire Wire Line
	8750 2150 8850 2150
Wire Wire Line
	8750 2250 8850 2250
Wire Wire Line
	8750 2350 8850 2350
Text GLabel 8750 2350 0    50   Input ~ 0
D5
Text GLabel 8750 2450 0    50   Input ~ 0
LED_G
Text GLabel 8750 2550 0    50   Input ~ 0
D7
Text GLabel 8750 2650 0    50   Input ~ 0
D8
Text GLabel 8750 2750 0    50   Input ~ 0
LED_B
Wire Wire Line
	8750 2450 8850 2450
Wire Wire Line
	8750 2550 8850 2550
Wire Wire Line
	8750 2650 8850 2650
Wire Wire Line
	8750 2750 8850 2750
$Comp
L Connector_Generic:Conn_01x12 J4
U 1 1 5D0AB8BB
P 10350 2150
F 0 "J4" H 10450 2200 50  0000 L CNN
F 1 "Header" H 10450 2100 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 10350 2150 50  0001 C CNN
F 3 "http://suddendocs.samtec.com/catalog_english/tsw_th.pdf" H 10350 2150 50  0001 C CNN
F 4 "~" H 0   0   50  0001 C CNN "Link"
F 5 "~" H 0   0   50  0001 C CNN "PartNumber"
	1    10350 2150
	1    0    0    -1  
$EndComp
Text GLabel 10050 1650 0    50   Input ~ 0
RAW
Text GLabel 10050 1850 0    50   Input ~ 0
RESET
Wire Wire Line
	10050 1650 10150 1650
Wire Wire Line
	9650 1750 10150 1750
Wire Wire Line
	10050 1850 10150 1850
Text GLabel 10050 2050 0    50   Input ~ 0
A3
Text GLabel 10050 2150 0    50   Input ~ 0
A2
Text GLabel 10050 2250 0    50   Input ~ 0
A1
Wire Wire Line
	10050 2050 10150 2050
Wire Wire Line
	10050 2150 10150 2150
Wire Wire Line
	10050 2250 10150 2250
Wire Wire Line
	10050 2350 10150 2350
Text GLabel 10050 2350 0    50   Input ~ 0
A0
Text GLabel 10050 2450 0    50   Input ~ 0
SCK
Text GLabel 10050 2550 0    50   Input ~ 0
MISO
Text GLabel 10050 2650 0    50   Input ~ 0
MOSI
Text GLabel 10050 2750 0    50   Input ~ 0
D10
Wire Wire Line
	10050 2450 10150 2450
Wire Wire Line
	10050 2550 10150 2550
Wire Wire Line
	10050 2650 10150 2650
Wire Wire Line
	10050 2750 10150 2750
$Comp
L power:VCC #PWR032
U 1 1 5D0CF89A
P 10100 1500
F 0 "#PWR032" H 10100 1350 50  0001 C CNN
F 1 "VCC" H 10117 1673 50  0000 C CNN
F 2 "" H 10100 1500 50  0001 C CNN
F 3 "" H 10100 1500 50  0001 C CNN
	1    10100 1500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5D0CF9EF
P 8300 1950
F 0 "#PWR026" H 8300 1700 50  0001 C CNN
F 1 "GND" H 8305 1777 50  0000 C CNN
F 2 "" H 8300 1950 50  0001 C CNN
F 3 "" H 8300 1950 50  0001 C CNN
	1    8300 1950
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5D0DDEA1
P 9650 1750
F 0 "#PWR031" H 9650 1500 50  0001 C CNN
F 1 "GND" H 9655 1577 50  0000 C CNN
F 2 "" H 9650 1750 50  0001 C CNN
F 3 "" H 9650 1750 50  0001 C CNN
	1    9650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1500 10100 1950
Wire Wire Line
	10100 1950 10150 1950
Text GLabel 6900 3300 2    50   Input ~ 0
RESET
Wire Wire Line
	6900 3300 6800 3300
Text GLabel 8550 5350 2    50   Input ~ 0
RESET
Wire Wire Line
	7850 5350 7950 5350
Wire Wire Line
	8250 5350 8350 5350
Wire Wire Line
	7150 2800 7150 2500
Wire Wire Line
	7150 2500 6800 2500
Wire Wire Line
	7300 2750 7300 2800
Wire Wire Line
	7300 2800 7150 2800
Wire Wire Line
	7550 2750 7550 2600
Wire Wire Line
	7550 2600 7500 2600
Wire Wire Line
	6800 2400 7300 2400
$Comp
L Device:LED D2
U 1 1 5CFB4695
P 7100 1500
F 0 "D2" H 7092 1716 50  0000 C CNN
F 1 "LED" H 7092 1625 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7100 1500 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS-20-92-0241/4222N.pdf" H 7100 1500 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/LTL-4222N" H 0   0   50  0001 C CNN "Link"
F 5 "LTL-4222N" H 0   0   50  0001 C CNN "PartNumber"
	1    7100 1500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 5CFB4723
P 7500 1500
F 0 "R7" V 7295 1500 50  0000 C CNN
F 1 "330" V 7386 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7540 1490 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/throughhole/Yageo_LR_CFR_2013.pdf" H 7500 1500 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/CFR-25JT-52-330R" H 0   0   50  0001 C CNN "Link"
F 5 "CFR-25JT-52-330R" H 0   0   50  0001 C CNN "PartNumber"
	1    7500 1500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5CFB47C5
P 7650 1600
F 0 "#PWR025" H 7650 1350 50  0001 C CNN
F 1 "GND" H 7655 1427 50  0000 C CNN
F 2 "" H 7650 1600 50  0001 C CNN
F 3 "" H 7650 1600 50  0001 C CNN
	1    7650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1500 7350 1500
Wire Wire Line
	7650 1500 7650 1600
Wire Wire Line
	6950 1500 6850 1500
Connection ~ 6850 2300
Wire Wire Line
	6850 2300 6800 2300
Wire Wire Line
	6850 1500 6850 2300
Text GLabel 10050 3500 0    50   Input ~ 0
RAW
Wire Wire Line
	2000 1050 1650 1050
Text GLabel 1650 1050 0    50   Input ~ 0
RAW
$Comp
L Graphic:Logo_Open_Hardware_Large #LOGO1
U 1 1 5D108007
P 10650 6050
F 0 "#LOGO1" H 10650 6550 50  0001 C CNN
F 1 "Logo_Open_Hardware_Large" H 10650 5650 50  0001 C CNN
F 2 "" H 10650 6050 50  0001 C CNN
F 3 "~" H 10650 6050 50  0001 C CNN
	1    10650 6050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D10CD99
P 5200 5950
F 0 "#FLG0101" H 5200 6025 50  0001 C CNN
F 1 "PWR_FLAG" H 5200 6124 50  0000 C CNN
F 2 "" H 5200 5950 50  0001 C CNN
F 3 "~" H 5200 5950 50  0001 C CNN
	1    5200 5950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D12AC03
P 2100 1050
F 0 "#FLG0102" H 2100 1125 50  0001 C CNN
F 1 "PWR_FLAG" V 2100 1178 50  0000 L CNN
F 2 "" H 2100 1050 50  0001 C CNN
F 3 "~" H 2100 1050 50  0001 C CNN
	1    2100 1050
	0    1    1    0   
$EndComp
Connection ~ 2000 1050
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5D12F805
P 1550 2000
F 0 "#FLG0103" H 1550 2075 50  0001 C CNN
F 1 "PWR_FLAG" V 1550 2128 50  0000 L CNN
F 2 "" H 1550 2000 50  0001 C CNN
F 3 "~" H 1550 2000 50  0001 C CNN
	1    1550 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 1050 2000 1050
Wire Wire Line
	1550 2000 1650 2000
Wire Wire Line
	1650 2000 1650 2100
Wire Wire Line
	1650 1750 1650 2000
Connection ~ 1650 2000
Wire Wire Line
	4950 6200 4950 6050
Wire Wire Line
	4950 6050 5200 6050
Wire Wire Line
	5800 6050 5900 6050
Wire Wire Line
	5900 6050 5900 6150
Wire Wire Line
	5200 5950 5200 6050
Connection ~ 5200 6050
Wire Wire Line
	5200 6050 5500 6050
$EndSCHEMATC
