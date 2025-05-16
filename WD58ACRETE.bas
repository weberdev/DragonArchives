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
1020 INPUT "next screen"
