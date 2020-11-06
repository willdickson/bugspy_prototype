EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 20000 20000
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
L rpi:RPI U2
U 1 1 5FA1C270
P 3275 2925
F 0 "U2" H 3275 4212 60  0000 C CNN
F 1 "RPI" H 3275 4106 60  0000 C CNN
F 2 "" H 3325 2775 60  0001 C CNN
F 3 "" H 3325 2775 60  0001 C CNN
	1    3275 2925
	1    0    0    -1  
$EndComp
Text Notes 2875 4175 0    50   ~ 0
Raspberrypi Zero W
$Comp
L teensy3:TEENSY3.1 U?
U 1 1 5FA2F83B
P 14450 2900
F 0 "U?" H 14425 4387 60  0000 C CNN
F 1 "TEENSY3.1" H 14425 4281 60  0000 C CNN
F 2 "" H 14150 3100 60  0000 C CNN
F 3 "" H 14150 3100 60  0000 C CNN
	1    14450 2900
	1    0    0    -1  
$EndComp
Text Label 4800 16225 0    50   ~ 0
5V_RPI
Text Label 4825 14775 0    50   ~ 0
5V_TNY
Wire Wire Line
	4525 1975 4575 1975
Wire Wire Line
	4575 1975 4575 2075
Wire Wire Line
	4575 2075 4525 2075
Wire Wire Line
	4575 1975 4775 1975
Connection ~ 4575 1975
Text Label 4775 1975 0    50   ~ 0
5V_RPI
Wire Wire Line
	4525 2175 5075 2175
Wire Wire Line
	5075 2175 5075 2225
$Comp
L power:GND #PWR?
U 1 1 5FA386F6
P 5075 2225
F 0 "#PWR?" H 5075 1975 50  0001 C CNN
F 1 "GND" H 5080 2052 50  0000 C CNN
F 2 "" H 5075 2225 50  0001 C CNN
F 3 "" H 5075 2225 50  0001 C CNN
	1    5075 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	13400 4400 13200 4400
Text Label 13200 4400 2    50   ~ 0
5V_TNY
Wire Wire Line
	2725 13975 2725 14125
Wire Wire Line
	2825 13975 2825 14125
Text Label 2725 14125 3    50   ~ 0
LIPO_PGOOD
Text Label 2825 14125 3    50   ~ 0
LIPO_CHG
Wire Wire Line
	13400 4200 13200 4200
Text Label 13200 4200 2    50   ~ 0
3V3_TNY
$Comp
L Switch:SW_SPST SW?
U 1 1 5FA3AC05
P 1975 15700
F 0 "SW?" H 1975 15843 50  0000 C CNN
F 1 "SW_SPST" H 1975 15844 50  0001 C CNN
F 2 "" H 1975 15700 50  0001 C CNN
F 3 "~" H 1975 15700 50  0001 C CNN
	1    1975 15700
	1    0    0    -1  
$EndComp
Text Label 1625 15700 2    50   ~ 0
3V3_TNY
Text Notes 500  -700 0    250  ~ 0
Notes:\n\n1.) Don't forget switching for IR and other LEDs\n2.) 12V Regulator for IR and UV lighting.  Two connectors? switches?\n3.) Header for display\n4.)  USB power switch LM3526MX-H/NOPB
Text Notes 1625 15850 0    50   ~ 0
solar charge disable
$Comp
L power:GND #PWR?
U 1 1 5FA3DCA5
P 12850 1750
F 0 "#PWR?" H 12850 1500 50  0001 C CNN
F 1 "GND" H 12855 1577 50  0000 C CNN
F 2 "" H 12850 1750 50  0001 C CNN
F 3 "" H 12850 1750 50  0001 C CNN
	1    12850 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12850 1700 12850 1750
Wire Wire Line
	13400 1700 12850 1700
$Comp
L power:GND #PWR?
U 1 1 5FA49783
P 16000 1950
F 0 "#PWR?" H 16000 1700 50  0001 C CNN
F 1 "GND" H 16005 1777 50  0000 C CNN
F 2 "" H 16000 1950 50  0001 C CNN
F 3 "" H 16000 1950 50  0001 C CNN
	1    16000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	16000 1900 16000 1950
Wire Wire Line
	15450 1900 16000 1900
Wire Wire Line
	1625 15700 1775 15700
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5FA54C6E
P 1500 14425
F 0 "J?" H 1418 14550 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1418 14551 50  0001 C CNN
F 2 "" H 1500 14425 50  0001 C CNN
F 3 "~" H 1500 14425 50  0001 C CNN
	1    1500 14425
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1700 14525 1850 14525
Wire Wire Line
	1850 14525 1850 14625
$Comp
L power:GND #PWR?
U 1 1 5FA5A444
P 1850 14625
F 0 "#PWR?" H 1850 14375 50  0001 C CNN
F 1 "GND" H 1855 14452 50  0000 C CNN
F 2 "" H 1850 14625 50  0001 C CNN
F 3 "" H 1850 14625 50  0001 C CNN
	1    1850 14625
	-1   0    0    -1  
$EndComp
Text Notes 3950 16500 0    50   ~ 0
5V regulator for rpi
Text Notes 3925 15050 0    50   ~ 0
5V regulator for teensy
Wire Wire Line
	4675 14775 4825 14775
Wire Wire Line
	3775 14875 3775 14975
Wire Wire Line
	3925 14875 3775 14875
$Comp
L pololu:pololu_S7V7F5 U?
U 1 1 5FA2D5FE
P 4300 14825
F 0 "U?" H 4300 15115 50  0000 C CNN
F 1 "pololu_S7V7F5" H 4300 15024 50  0000 C CNN
F 2 "" V 3825 14725 50  0001 C CNN
F 3 "" V 3825 14725 50  0001 C CNN
	1    4300 14825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FA2D5F4
P 3775 14975
F 0 "#PWR?" H 3775 14725 50  0001 C CNN
F 1 "GND" H 3780 14802 50  0000 C CNN
F 2 "" H 3775 14975 50  0001 C CNN
F 3 "" H 3775 14975 50  0001 C CNN
	1    3775 14975
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 16225 4800 16225
Wire Wire Line
	3750 16325 3750 16425
Wire Wire Line
	3900 16325 3750 16325
$Comp
L pololu:pololu_S7V7F5 U1
U 1 1 5FA25500
P 4275 16275
F 0 "U1" H 4275 16565 50  0000 C CNN
F 1 "pololu_S7V7F5" H 4275 16474 50  0000 C CNN
F 2 "" V 3800 16175 50  0001 C CNN
F 3 "" V 3800 16175 50  0001 C CNN
	1    4275 16275
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FA23904
P 3750 16425
F 0 "#PWR01" H 3750 16175 50  0001 C CNN
F 1 "GND" H 3755 16252 50  0000 C CNN
F 2 "" H 3750 16425 50  0001 C CNN
F 3 "" H 3750 16425 50  0001 C CNN
	1    3750 16425
	1    0    0    -1  
$EndComp
Text Notes 2125 13150 0    50   ~ 0
LIPO  solar/USB charger
$Comp
L Device:R_Small R?
U 1 1 5FA73C45
P 1975 15125
F 0 "R?" V 2079 15125 50  0000 C CNN
F 1 "R_Small" V 1870 15125 50  0001 C CNN
F 2 "" H 1975 15125 50  0001 C CNN
F 3 "~" H 1975 15125 50  0001 C CNN
	1    1975 15125
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FA79914
P 1450 15200
F 0 "#PWR?" H 1450 14950 50  0001 C CNN
F 1 "GND" H 1455 15027 50  0000 C CNN
F 2 "" H 1450 15200 50  0001 C CNN
F 3 "" H 1450 15200 50  0001 C CNN
	1    1450 15200
	1    0    0    -1  
$EndComp
Text Notes 1650 15275 0    50   ~ 0
current set (optional)
Text Notes 1100 14675 0    50   ~ 0
LIPO thermistor
$Comp
L pololu:pololu_U3V12F12 U?
U 1 1 5FAA0194
P 6450 16850
F 0 "U?" H 6450 17140 50  0000 C CNN
F 1 "pololu_U3V12F12" H 6450 17049 50  0000 C CNN
F 2 "" V 5975 16750 50  0001 C CNN
F 3 "" V 5975 16750 50  0001 C CNN
	1    6450 16850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 16900 5925 17000
Wire Wire Line
	6075 16900 5925 16900
$Comp
L power:GND #PWR?
U 1 1 5FAA9652
P 5925 17000
F 0 "#PWR?" H 5925 16750 50  0001 C CNN
F 1 "GND" H 5930 16827 50  0000 C CNN
F 2 "" H 5925 17000 50  0001 C CNN
F 3 "" H 5925 17000 50  0001 C CNN
	1    5925 17000
	1    0    0    -1  
$EndComp
$Comp
L pololu:pololu_U3V12F12 U?
U 1 1 5FAB9342
P 6450 16250
F 0 "U?" H 6450 16540 50  0000 C CNN
F 1 "pololu_U3V12F12" H 6450 16449 50  0000 C CNN
F 2 "" V 5975 16150 50  0001 C CNN
F 3 "" V 5975 16150 50  0001 C CNN
	1    6450 16250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 16300 5925 16400
Wire Wire Line
	6075 16300 5925 16300
$Comp
L power:GND #PWR?
U 1 1 5FAB9530
P 5925 16400
F 0 "#PWR?" H 5925 16150 50  0001 C CNN
F 1 "GND" H 5930 16227 50  0000 C CNN
F 2 "" H 5925 16400 50  0001 C CNN
F 3 "" H 5925 16400 50  0001 C CNN
	1    5925 16400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5FAD98E3
P 3450 14775
F 0 "SW?" H 3450 14918 50  0000 C CNN
F 1 "SW_SPST" H 3450 14919 50  0001 C CNN
F 2 "" H 3450 14775 50  0001 C CNN
F 3 "~" H 3450 14775 50  0001 C CNN
	1    3450 14775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 14775 3925 14775
$Comp
L Switch:SW_SPST SW?
U 1 1 5FAE1A2F
P 18575 3300
F 0 "SW?" H 18575 3443 50  0000 C CNN
F 1 "SW_SPST" H 18575 3444 50  0001 C CNN
F 2 "" H 18575 3300 50  0001 C CNN
F 3 "~" H 18575 3300 50  0001 C CNN
	1    18575 3300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FAE64B9
P 18975 3700
F 0 "#PWR?" H 18975 3450 50  0001 C CNN
F 1 "GND" H 18980 3527 50  0000 C CNN
F 2 "" H 18975 3700 50  0001 C CNN
F 3 "" H 18975 3700 50  0001 C CNN
	1    18975 3700
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5FAE8F7B
P 18575 3000
F 0 "SW?" H 18575 3143 50  0000 C CNN
F 1 "SW_SPST" H 18575 3144 50  0001 C CNN
F 2 "" H 18575 3000 50  0001 C CNN
F 3 "~" H 18575 3000 50  0001 C CNN
	1    18575 3000
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5FAFECF7
P 18575 2700
F 0 "SW?" H 18575 2843 50  0000 C CNN
F 1 "SW_SPST" H 18575 2844 50  0001 C CNN
F 2 "" H 18575 2700 50  0001 C CNN
F 3 "~" H 18575 2700 50  0001 C CNN
	1    18575 2700
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5FAFEE88
P 18575 2400
F 0 "SW?" H 18575 2543 50  0000 C CNN
F 1 "SW_SPST" H 18575 2544 50  0001 C CNN
F 2 "" H 18575 2400 50  0001 C CNN
F 3 "~" H 18575 2400 50  0001 C CNN
	1    18575 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	18775 2400 18975 2400
Wire Wire Line
	18975 2400 18975 2700
Wire Wire Line
	18775 2700 18975 2700
Connection ~ 18975 2700
Wire Wire Line
	18975 2700 18975 3000
Wire Wire Line
	18775 3000 18975 3000
Connection ~ 18975 3000
Wire Wire Line
	18975 3000 18975 3300
Wire Wire Line
	18775 3300 18975 3300
Wire Wire Line
	18975 3600 18975 3700
Wire Wire Line
	18375 2400 18125 2400
Wire Wire Line
	18375 2700 18125 2700
Wire Wire Line
	18375 3000 18125 3000
Wire Wire Line
	18375 3300 18125 3300
Text Label 18125 2400 2    50   ~ 0
SWITCH_1
Text Label 18125 2700 2    50   ~ 0
SWITCH_2
Text Label 18125 3000 2    50   ~ 0
SWITCH_3
Text Label 18125 3300 2    50   ~ 0
SWITCH_4
$Comp
L Switch:SW_SPST SW?
U 1 1 5FB244B7
P 18575 3600
F 0 "SW?" H 18575 3743 50  0000 C CNN
F 1 "SW_SPST" H 18575 3744 50  0001 C CNN
F 2 "" H 18575 3600 50  0001 C CNN
F 3 "~" H 18575 3600 50  0001 C CNN
	1    18575 3600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	18975 3300 18975 3600
Wire Wire Line
	18775 3600 18975 3600
Wire Wire Line
	18375 3600 18125 3600
Text Label 18125 3600 2    50   ~ 0
SWITCH_5
Connection ~ 18975 3300
Connection ~ 18975 3600
Text Notes 3075 14575 0    50   ~ 0
system power switch
Text Label 13400 2400 2    50   ~ 0
SWITCH_1
Text Label 13400 2500 2    50   ~ 0
SWITCH_2
Text Label 13400 2600 2    50   ~ 0
SWITCH_3
Text Label 13400 2700 2    50   ~ 0
SWITCH_4
Text Label 13400 2800 2    50   ~ 0
SWITCH_5
Text Label 2025 3575 2    50   ~ 0
SWITCH_3
Text Label 2025 3675 2    50   ~ 0
SWITCH_4
Text Label 2025 3775 2    50   ~ 0
SWITCH_5
Text Label 2025 3475 2    50   ~ 0
SWITCH_2
Text Label 2025 3375 2    50   ~ 0
SWITCH_1
Wire Wire Line
	2025 3875 1825 3875
Wire Wire Line
	1825 3875 1825 3975
$Comp
L power:GND #PWR?
U 1 1 5FB922DD
P 1825 3975
F 0 "#PWR?" H 1825 3725 50  0001 C CNN
F 1 "GND" H 1830 3802 50  0000 C CNN
F 2 "" H 1825 3975 50  0001 C CNN
F 3 "" H 1825 3975 50  0001 C CNN
	1    1825 3975
	1    0    0    -1  
$EndComp
$Comp
L adafruit:adafruit_bq24074 U?
U 1 1 5FB9BA43
P 2725 13575
F 0 "U?" V 3075 14175 50  0000 R CNN
F 1 "adafruit_bq24074" V 3075 14025 50  0000 R CNN
F 2 "" H 3975 13325 50  0001 C CNN
F 3 "" H 3975 13325 50  0001 C CNN
	1    2725 13575
	0    -1   -1   0   
$EndComp
NoConn ~ 2225 13975
Wire Wire Line
	2325 13975 2325 14075
Wire Wire Line
	3025 13975 3025 14075
Wire Wire Line
	3225 13975 3225 14075
$Comp
L power:GND #PWR?
U 1 1 5FBA21C4
P 2325 14075
F 0 "#PWR?" H 2325 13825 50  0001 C CNN
F 1 "GND" H 2330 13902 50  0000 C CNN
F 2 "" H 2325 14075 50  0001 C CNN
F 3 "" H 2325 14075 50  0001 C CNN
	1    2325 14075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FBA2525
P 3025 14075
F 0 "#PWR?" H 3025 13825 50  0001 C CNN
F 1 "GND" H 3030 13902 50  0000 C CNN
F 2 "" H 3025 14075 50  0001 C CNN
F 3 "" H 3025 14075 50  0001 C CNN
	1    3025 14075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FBA2805
P 3225 14075
F 0 "#PWR?" H 3225 13825 50  0001 C CNN
F 1 "GND" H 3230 13902 50  0000 C CNN
F 2 "" H 3225 14075 50  0001 C CNN
F 3 "" H 3225 14075 50  0001 C CNN
	1    3225 14075
	1    0    0    -1  
$EndComp
NoConn ~ 3125 13975
Wire Wire Line
	2925 13975 2925 14775
Wire Wire Line
	2925 14775 3250 14775
Wire Wire Line
	2075 15125 2525 15125
Wire Wire Line
	2525 15125 2525 13975
Wire Wire Line
	1875 15125 1450 15125
Wire Wire Line
	1450 15125 1450 15200
Wire Wire Line
	1700 14425 2425 14425
Wire Wire Line
	2425 13975 2425 14425
Wire Wire Line
	2175 15700 2625 15700
Wire Wire Line
	2625 13975 2625 15700
$Comp
L adafruit:adafruit_LC709203F U?
U 1 1 5FBDEE90
P 1975 16750
F 0 "U?" H 1600 17050 50  0000 L CNN
F 1 "adafruit_LC709203F" H 1750 17050 50  0000 L CNN
F 2 "" V 1975 16900 50  0001 C CNN
F 3 "" V 1975 16900 50  0001 C CNN
	1    1975 16750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2225 17100 2225 17225
Text Label 2225 17225 3    50   ~ 0
3V3_TNY
$Comp
L power:GND #PWR?
U 1 1 5FBEB7F5
P 2125 17550
F 0 "#PWR?" H 2125 17300 50  0001 C CNN
F 1 "GND" H 2130 17377 50  0000 C CNN
F 2 "" H 2125 17550 50  0001 C CNN
F 3 "" H 2125 17550 50  0001 C CNN
	1    2125 17550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2025 17100 2025 17225
Wire Wire Line
	1925 17100 1925 17225
NoConn ~ 1825 17100
Text Label 2025 17225 3    50   ~ 0
SCL_TNY
Wire Wire Line
	2125 17100 2125 17550
Text Label 1925 17225 3    50   ~ 0
SDA_TNY
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5FBF6E69
P 1100 17325
F 0 "J?" H 1018 17450 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1018 17451 50  0001 C CNN
F 2 "" H 1100 17325 50  0001 C CNN
F 3 "~" H 1100 17325 50  0001 C CNN
	1    1100 17325
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1300 17425 1450 17425
Wire Wire Line
	1450 17425 1450 17525
$Comp
L power:GND #PWR?
U 1 1 5FBF6FA3
P 1450 17525
F 0 "#PWR?" H 1450 17275 50  0001 C CNN
F 1 "GND" H 1455 17352 50  0000 C CNN
F 2 "" H 1450 17525 50  0001 C CNN
F 3 "" H 1450 17525 50  0001 C CNN
	1    1450 17525
	-1   0    0    -1  
$EndComp
Text Notes 725  17575 0    50   ~ 0
LIPO thermistor
Wire Wire Line
	1300 17325 1725 17325
Wire Wire Line
	1725 17100 1725 17325
Text Notes 2350 16350 2    50   ~ 0
LIPO FUEL GUAGE
Text Label 4800 16900 0    50   ~ 0
5V_AUX
Text Notes 4050 17175 0    50   ~ 0
5V AUX
Wire Wire Line
	4650 16900 4800 16900
Wire Wire Line
	3750 17000 3750 17100
Wire Wire Line
	3900 17000 3750 17000
$Comp
L pololu:pololu_S7V7F5 U?
U 1 1 5FC67023
P 4275 16950
F 0 "U?" H 4275 17240 50  0000 C CNN
F 1 "pololu_S7V7F5" H 4275 17149 50  0000 C CNN
F 2 "" V 3800 16850 50  0001 C CNN
F 3 "" V 3800 16850 50  0001 C CNN
	1    4275 16950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FC6702D
P 3750 17100
F 0 "#PWR?" H 3750 16850 50  0001 C CNN
F 1 "GND" H 3755 16927 50  0000 C CNN
F 2 "" H 3750 17100 50  0001 C CNN
F 3 "" H 3750 17100 50  0001 C CNN
	1    3750 17100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5FC72881
P 7375 16200
F 0 "J?" H 7455 16192 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 7455 16101 50  0000 L CNN
F 2 "" H 7375 16200 50  0001 C CNN
F 3 "~" H 7375 16200 50  0001 C CNN
	1    7375 16200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5FC732A0
P 7375 16800
F 0 "J?" H 7455 16792 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 7455 16701 50  0000 L CNN
F 2 "" H 7375 16800 50  0001 C CNN
F 3 "~" H 7375 16800 50  0001 C CNN
	1    7375 16800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6825 16200 7175 16200
Wire Wire Line
	6825 16800 7175 16800
Text Notes 7325 16100 0    50   ~ 0
LED_A
Text Notes 7325 16700 0    50   ~ 0
LED_B
$Comp
L power:GND #PWR?
U 1 1 5FC7C7AC
P 7050 16425
F 0 "#PWR?" H 7050 16175 50  0001 C CNN
F 1 "GND" H 7055 16252 50  0000 C CNN
F 2 "" H 7050 16425 50  0001 C CNN
F 3 "" H 7050 16425 50  0001 C CNN
	1    7050 16425
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 16425 7050 16300
Wire Wire Line
	7050 16300 7175 16300
$Comp
L power:GND #PWR?
U 1 1 5FC7F223
P 7050 17025
F 0 "#PWR?" H 7050 16775 50  0001 C CNN
F 1 "GND" H 7055 16852 50  0000 C CNN
F 2 "" H 7050 17025 50  0001 C CNN
F 3 "" H 7050 17025 50  0001 C CNN
	1    7050 17025
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 17025 7050 16900
Wire Wire Line
	7050 16900 7175 16900
$EndSCHEMATC