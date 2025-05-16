Rem ACRETE, by Steve Gilham, originally published in White Dwarf 58
Rem Updated to QBASIC by Ian Weber
10 Cls
20 Screen 2
30 Randomize Timer
40 Dim STO(500): Dim SWP(25, 5): Dim VS(25): Dim HLD(25, 5): Dim U$(25)
50 Input "Max e"; E: Input "stellar mass "; MS: Input "dust"; D: Input "gas"; G
60 If E = 0 Then E = .4
70 If MS = 0 Then MS = 1
80 If D = 0 Then D = 1
90 G = G * 25: If G = 0 Then G = 25
100 G = G / D
110 For I = 1 To 500
    120 R = (I / 10) / (MS ^ .33)
    130 U = R ^ .33
    140 STO(I) = D * 1.5 * R * R * Exp(-5! * U)
150 Next I
160 SM = STO(500)
165 LS = MS ^ 4: If MS < .4 Then LS = .23 * (MS ^ 2.3)
170 IN = 3 * Sqr(LS): IN = Int(IN): If IN < 0.5 Then IN = 1
180 If STO(IN) < SM Then SM = STO(IN)
190 SM = SM / 2
Rem line moved
Rem 200 LS = MS ^ 4: If MS < .4 Then LS = .23 * (MS ^ 2.3)
210 N = 0
220 Rem
230 Rem Start iteration
240 Rem
250 GoSub 2500
260 SWP(N, 3) = E * Rnd: SWP(N, 0) = 0: V$(N) = "r"
270 SWP(N, 5) = 0
280 If SWP(N, 3) > 1 Then SWP(N, 3) = 1
310 For KK = 1 To N - 1
    320 Print KK, SWP(KK, 2), SWP(KK, 5) / 0.3
330 Next KK
360 K = N
370 GoSub 2300
380 GoSub 2000
390 If N = 26 Then GoTo 410
400 GoTo 250
410 GoSub 2900
420 GoSub 1000
430 Print "max e", E, "stellar mass", MS: Print "dust", D, "gas", G * D / 25
440 Print " ": Print " #", "orbit", "mass", "e", "type"
450 For I = 1 To N
    460 Print I, SWP(I, 2), SWP(I, 5) / .03, SWP(I, 3), V$(I)
470 Next I
480 GoSub 1000
490 GoSub 4000
500 Input "picture", PIC
510 GoSub 2690
520 Input "winddown", PIC
530 Screen O: Width 80: Stop
1000 Rem -------
1010 Rem NEXT SCREEN
1020 Input "next screen", PIC: Cls: Return
2000 Rem --------
2010 Rem collisions and aftermath
2020 If N > 1.5 Then Return
2030 For K = 1 To N - 1
    2040 If SWP(N, 4) < SWP(K, 1) Then GoTo 2210
    2050 If SWP(K, 4) < SWP(N, 1) Then GoTo 2210
    2060 Print "COLLISION"; K; "AND "; N
    Rem 2070 H=SWP(N,5)*SQR(SWP(N,2)*(1-SWP((N,3)*SWP(N,3))))
    2070 H = SWP(N, 5) * Sqr(SWP(N, 2) * (1 - SWP(N, 3) * SWP(N, 3)))
    2080 H = H + SWP(K, 5) * Sqr(SWP(K, 2) * (1 - SWP(K, 3) * SWP(K, 3)))
    2090 SWP(K, 5) = SWP(N, 5) + SWP(K, 5): H = H / SWP(K, 5)
    2100 SWP(K, 0) = SWP(N, 0) = SWP(K, 0)
    2110 KF = SWP(N, 3): If KF > SWP(K, 3) Then KF = SWP(K, 3): SWP(K, 3) = Rnd * KF
    2120 SWP(K, 2) = H * H / (1 - SWP(K, 3) * SWP(K, 3))
    2130 GoSub 2300
    2140 N = N - 1
    2150 If K = N Then GoTo 2020
    2160 For L = 0 To 5: SWP(N + 1, L) = SWP(K, L): Next L: V$(N + 1) = V$(K)
    2170 For L = 0 To 5: SWP(K, L) = SWP(N, L): Next L: V$(K) = V$(N)
    2180 For L = 0 To 5: SWP(N, L) = SWP(N + 1, L): Next L: V$(N) = V$(N + 1)
    2190 For L = 0 To 5: SWP(N + 1, L) = 0: Next L: V$(N + 1) = ""
    2200 GoTo 2020
2210 Next K
2220 Return
2300 Rem -----------
2310 Rem accretion
2320 RA = SWP(K, 2) * (1 + SWP(K, 3)): RP = SWP(K, 2) * (1 - SWP(K, 3))
2330 MC = .12 * (RP - 75) * (LS - .375)
2340 SWP(K, 5) = SWP(K, 0): If SWP(K, 0) > MC Then SWP(K, 5) = MC + G * (SWP(K, 0) - MC)
2350 KF = .1 * (SWP(K, 5 / MS) ^ .25)
2360 SWP(K, 1) = RP - KF: SWP(K, 4) = RA + KF
2370 IM = Int(10 * SWP(K, 1) + 0.5): IX = Int(10 * SWP(K, 4) + 0.5)
2380 If M < IN Then M = IN
2390 If IX > 500 Then IX = 500
2400 DM = 0
2410 For I = IM To IX: DM = DM + STO(I): STO(I) = 0: Next I
2420 SWP(K, 0) = SWP(K, 0) + DM
2430 If DM > SM / 2 Then GoTo 2340
2440 If SWP(K, 0) > MC Then V$(K) = "g"
2450 SWP(K, 5) = SWP(K, 0): If SWP(K, 0) > MC Then SWP(K, 5) = MC + G * (SWP(K, 0) - MC)
2460 If SWP(K, 5) > 200 Then V$(K) = "*"
2470 Return
2480 Rem ---------
2490 Rem position of next nucleus
2500 SUM = 0
2510 Print " "
2520 For I = IN To 500
    2530 SUM = SUM + STO(I)
    Rem I have no idea why this is pulled.
    2540 Rem x=70+90*LOG(I,15):Y=70+89*LOG(I+5)
    2550 Rem IF STO(I)>0 THEN LINE(X,100)-(Y,100)
2560 Next I
2570 Print SUM / .03; "LEFT"
2580 If SUM < SM Then GoTo 410
2590 SUM = SUM * Rnd
2600 For I = IN To 500
    2610 SUM = SUM - STO(I)
    2620 R = 1 / 10
    2630 If SUM < 0 Then GoTo 2650
2640 Next I
2650 N = N + 1
2660 SWP(N, 2) = R
2670 Return
2680 Rem -----------
2690 Rem picture
2700 Cls
2710 Screen 1
2720 SCL = 300 / Log(50 / .3): KK = 10 - SCL * Log(.3)
2730 Line (10, 100)-(310, 100)
2740 For I = 1 To N
    2750 If SWP(I, 2) < 0.3 Then GoTo 2860
    2760 X = KK + SCL * Log(SWP(I, 2))
    2770 RA = SWP(I, 2) * (1 + SWP(I, 3)): RP = SWP(I, 2) * (1 - SWP(I, 3))
    2780 Y = KK + SCL * Log(RP): Z = KK + SCL * Log(RA)
    2790 If SWP(I, 5) < SM Then GoTo 2860
    2800 R = 10 * (SWP(I, 5) - (1 / 3))
    2810 Line (Y, 140 + I)-(Z, 140 + I): COL = 1
    2820 MC = 12 * (RP - 75) * (LS - .375)
    2830 If SWP(I, 5) > MC Then COL = 2
    2840 If SWP(I, 5) > 200 Then COL = 3
    2850 Circle (X, 100), R, COL
2860 Next I
2870 Return
2880 Rem ----------
2890 Rem sorting
2900 For I = 1 To N: M = 0: R = 55:
    2910 For J = 1 To N: If SWP(J, 2) > R Then GoTo 2940
        2920 If SWP(J, 5) < SM / 2 Then GoTo 2940
        2930 R = SWP(J, 2): M = J: GoTo 2950
        2940 N = N - 1
    2950 Next J
    2960 For L = 0 To 5
    2970 HLD(I, L) = SWP(M, L): Next L
    2980 U$(I) = V$(M)
2990 SWP(M, 2) = 60: Next I
3000 For I = 1 To N
    3010 V$(I) = U$(I)
    3020 For L = 0 To 4
        3030 SWP(I, L) = .001 * Int(1000 * HLD(I, L))
    3040 Next L
    3050 SWP(I, 5) = .00003 * Int(1000 / .03 * HLD(I, 5))
    3060 U$(I) = "?": If V$(I) <> "r" Then U$(I) = "NO"
    3070 If SWP(I, 5) < 9 / 1000 Then U$(I) = "no"
3080 Next I
3090 Return
4000 Rem -----------
4010 Rem secondary quantities
4020 Print "#", "YEAR", "temp c", "incl"
4030 For I = 1 To N
    4040 YR = SOR(SWP(I, 2) / MS) * SWP(I, 2): YR = .001 * Int(1000 * YR)
    4050 T = 288 * (LS ^ .25) / Sqr(SWP(I, 2)) - 273: T = Int(T)
    4060 IN = 180 * (1 - (Rnd ^ (2 / 9))): IN = .1 * Int(T)
    4070 If T < -14 Then U$(I) = "no"
    4080 If T > 65 Then U$(I) = "no"
    4090 Print I, YR, T, IN
4100 Next I
4110 GoSub 1010
4120 Rem ---------
4130 Print "$", "radius (Km)", "g(m/s^2)", "size"
4140 For I = 1 To N
    4150 If V$(I) <> "r" Then GoTo 4250: Rem terrestrials
    4160 R = (SWP(I, 5) / .03) ^ (1 / 3): MM = R(2 ^ (1 / 3))
    4170 RN = MM ^ 2 * (R / 3)
    4180 If Abs(R - N) < 0.01 Then GoTo 4200
    4190 R = RN: GoTo 4170
    4200 SWP(I, 1) = RN: R = Int(6400 * RN): S = Int(5.672 * RN)
    4210 If S > 7 Then S = 7
4220 G=327

