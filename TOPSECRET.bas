Rem ------------------------------------------
Rem Top Secret Agent Generator
Rem Original: Joe Ulowetz, Dragon Magazine (1980)
Rem Update: Ian Weber, 2025
Rem No challenge to TSR, WotC, or other copyright holders is intended.
Rem Top Secret originally written by Merle M. Rasmussen, and edited by Allen Hammack
rem This is an archival translation into QBASIC intended to maintain as much of the original structure and functioning as possible.
Rem ------------------------------------------

1 Randomize Timer
2 Option Base 1
29 Rem AGENT KNOWLEDGE DATA
30 Dim AK$(38)
For I = 1 To 38
    Read AK$(I)
Next I
31 Data "AGRICULTURE","ANIMAL SCIENCE","ARCHlTECTURE","ART & CRAFT","ASTRONOMY","SPACE SCIENCE","BIOLOGY/BlOCHEMISTRY","BOTANY","CHEMISTRY","COMPUTER SCIENCE","ECOLOGY/EARTH SCIENCE","ECONOMICS/FINANCE","EDUCATION/INDOCTRINATION","ENG, AERONAUTICAL","ENG, CONSTRUCTION/CIVIL","ENG, ELECTRICAL","ENG, HYDRAULIC","ENG, INDUSTRIAL","ENG, MECHANICAL","ENG, TRANSPORTATION"
32 Data "FINE ARTS","GEOGRAPHY","GEOLOGY","HOME ECONOMICS","LAW","LITERATURE","MATHEMATICS/ACCOUNTlNG","MEDlClNE/PHYSIOLOGY","METALLURGY","MILITARY SCIENCE/WEAPONRY","PHOTOGRAPHY","PHYSICAL EDUCATION","PHYSICS","POLITICAL SCIENCE/IDEOLOGY","PSYCHOLOGY","RELIGION","SOCIAL SCIENCES","WORLD HISTORY/CURRENT AFFAIRS","CHOICE"

Rem HEIGHT AND WEIGHT PARAMETERS
40 Dim HM(10) As Integer
41 Dim HS(10) As Integer
42 Dim HT(10) As Integer
Rem I brute forced this because DATA was breaking. No idea why.
Rem HM is primary height table
43 HM(1) = 0: HM(2) = -1: HM(3) = -1: HM(4) = 0: HM(5) = 0: HM(6) = 1: HM(7) = 1: HM(8) = 2: HM(9) = 2: HM(10) = 0
Rem HS is short height table
44 HS(1) = -8: HS(2) = -7: HS(3) = -6: HS(4) = -5: HS(5) = -4: HS(6) = -4: HS(7) = -3: HS(8) = -3: HS(9) = -2: HS(10) = -2
Rem HS is tall height table
45 HT(1) = 3: HT(3) = 3: HT(3) = 3: HT(4) = 4: HT(5) = 5: HT(6) = 6: HT(7) = 5: HT(8) = 5: HT(9) = 6: HT(10) = 7
46 Dim LF(5): Dim AO(15): Dim AR(15)
Dim WM(10): Dim WL(10): Dim WH(10)
WM(1) = 0: WM(2) = -10: WM(3) = -5: WM(4) = -5: WM(5) = 0: WM(6) = 0: WM(7) = 5: WM(8) = 10: WM(9) = 15: WM(10) = 0
WL(1) = -35: WL(2) = -30: WL(3) = -25: WL(4) = -20: WL(5) = -15: WL(6) = -15: WL(7) = -10: WL(8) = -10: WL(9) = -10: WL(10) = -10
WH(1) = 15: WH(2) = 20: WH(3) = 25: WH(4) = 30: WH(5) = 40: WH(6) = 50: WH(7) = 75: WH(8) = 100: WH(9) = 125: WH(10) = 150
47 Data 0,-10,-5,-5,0,0,5,10,15,0,-35,-30,-25,-20,-15,-15,-10,-10,-10,-10,15,20,25,30,40,50,75,100,125,150
50 Print "ADMINISTRATOR": Print " FILE 080"
60 Print: Print: Print " TOP SECRET"
70 Print: Print: Print " OPERATION:DOSSIER":
Print " CODE NAME:PAPERWEIGHT"
80 Print: Print " DO NOT ACCEPT TAPE FROM COURIER": Print "IF SEAL IS BROKEN"
83 Print: Print " (TOUCH ANY KEY)";
90 Do
    K$ = InKey$
Loop While K$ = ""
95 MS$ = "BEGIN: AGENT GENERATION"
GoSub 100
GoTo 110
100 Print: Print "** TOP SECRET **": Print:
105 Print: Print: Return
110 CT = 0:
Input " 0=NPC AGENT, 1=PLAYER AGENT"; CT
112 If CT = 0 Then
    Print " AGENT IS NPC"
Else
    Print " AGENT IS PLAYER CHARACTER"
End If
120 Print: HD = 0: Input " HANDEDNESS (0=RANDOM, 1=RIGHT, 2=LEFT)"; HD
130 If HD > 0 Then 140 Else HD = 1:
If Int(Rnd * 100) > 90 Then HD = 2
140 If HD = 1 Then
    Print " AGENT IS RIGHT HANDED"
Else Print " AGENT IS LEFT HANDED"
End If
150 Print: SX = 0: Input " SEX (0=RANDOM,1=MALE, 2=FEMALE)"; SX
160 If SX > 0 Then
    GoTo 170
Else SX = 1
End If
If Int(Rnd * 10) > 8 Then SX = 2
170 If SX = 1 Then
    Print " AGENT IS MALE"
Else
    Print " AGENT IS FEMALE"
End If
180 Print: Input " AGENT RACE:"; RC$: If Len(RC$) = 0 Then RC$ = "CAUCASIAN"
190 Rem GENERATE PRIMARY CHARACTERISTICS
200 X = Int(Rnd * 100): If CT = 1 Then GoSub 270
210 P1 = X: X = Int(Rnd * 100): If CT = 1 Then GoSub 270
220 P2 = X: X = Int(Rnd * 100): If CT = 1 Then GoSub 270
230 P3 = X: X = Int(Rnd * 100): If CT = 1 Then GoSub 270
240 P4 = X: X = Int(Rnd * 100): If CT = 1 Then GoSub 270
250 P5 = X: X = Int(Rnd * 100): If CT = 1 Then GoSub 270
260 P6 = X: GoTo 280
265 Rem INCREASE VALUES FOR PC
270 If X > 90 Then
    Return
Else X = X + 5
End If

If X > 70 Then
    Return
Else X = X + 5
End If
If X > 50 Then
    Return
Else X = X + 5
End If
If X > 25 Then
    Return
Else X = X + 10: Return
End If
280 M$ = "AGENT'S PRIMARY TRAITS": GoSub 100
290 Print "1. STRENGTH"; P1, "4. COURAGE"; P4: Print: Print "2. CHARM"; P2, "              5. KNOWLEDGE"; P5: Print: Print "3. WlLLPOWER"; P3, "6. COORDlNATlON"; P6
300 Print: I = 0: Input "ENTER 0 TO CONTINUE, 1-6 TO CHANGE TRAIT (BY NUMBER), 7 TO RE-ROLL PRIMARY TRAITS, 8 TO START ALL OVER"; I
305 IF I=0 THEN goto 332 ELSE IF I=7 THEN 200 ELSE
If I = 8 Then 95 Else Print: Print: Print: Print "NEW VALUE DESIRED FOR TRAIT #"; I;: Input X
320 If I = 1 Then P1 = X Else If I = 2 Then P2 = X Else If I = 3 Then P3 = X Else If I = 4 Then P4 = X Else If I = 5 Then P5 = X Else If I = 6 Then P6 = X
330 GoTo 280
332 Print "ONE MOMENT PLEASE..."
335 Rem SECONDARY TRAITS
340 S1 = Int(.5 + (P6 + P4) / 2): S2 = Int(.5 + (P4 + P2) / 2): S3 = Int(.5 + (P2 + P6) / 2): S4 = Int(.5 + (P5 + P6) / 2): S5 = P1 + P3 + P6: S6 = Int(.5 + (P1 + P3) / 10)
345 Rem TERTIARY TRAITS
350 T1 = S3 + P1: T2 = S1 + P1: T3 = S2 + S3
355 Rem HEIGHT
360 H = 70: If SX = 2 Then H = 65
370 X = Int(Rnd * 10): H = H + HM(X): If X = 1 Then H = H + HS(Int(Rnd * 10)) Else If X = 10 Then H = H + HT(Int(Rnd * 10))
375 Rem AGE
380 AG = Int(Rnd * 10) + Int(Rnd * 10) + Int(Rnd * 10) + 12: If CT = 0 Then AG = AG + Int(Rnd * 20)
385 Rem GLASSES?
390 GL = 0: CG = P6: If Int(Rnd * 10) < 4 Then GL = 1: CG = P6 - Int(P6 * Int(Rnd * 100) / 100): If Int(Rnd * 10) = 1 Then CL = 2
395 Rem WEIGHT
400 WT = 170: X = (H - 70) * 5: If SX = 2 Then WT = 145: X = (H - 65) * 5
410 WT = WT + X + Int(Rnd * 10) - 5: X = Int(Rnd * 10): WT = WT + X: If X = 1 Then WT = WT - WL(Int(Rnd * 10)) Else If X = 10 Then WT = WT + WH(Int(Rnd * 10))
415 If SX = 2 Then WT = Int(WT * .8)
420 NL = Int(P5 / 25) + 1
LF(1) = 70 + Int(Rnd * 10) + Int(Rnd * 10) + Int(Rnd * 10)
For I = 2 To 5
    LF(I) = 0
Next I

If NL = 1 Then
    GoTo 440
Else
    For I = 2 To NL
        LF(I) = Rnd * 100
        If LF(I) < 40 Then
            LF(I) = 40
        Else
            If LF(I) > LF(1) Then
                LF(I) = LF(1)
            End If
        End If
    Next I
End If
Rem dummied this out because it's all in the loop in QBASIC
Rem    430 Next I
440 NA = Int((P5 - 1) / 10) + 1
For I = 1 To NA
    X = Int(Rnd * 100)
    If X < 75 Then
        AO(I) = Int((X + 1) / 2)
        If AO(I) < 1 Then AO(I) = 1
    Else
        AO(I) = 38
    End If

    If I > 1 And AO(I) <> 39 Then
        For I1 = 1 To I - 1
            If AO(I) = AO(I1) Then
                ' Duplicate found, reroll this slot
                I = I - 1
                Exit For
            End If
        Next I1
    End If

    AR(I) = Int(Rnd * 100)
    If AR(I) < 21 Then AR(I) = AR(I) + 20
    AR(I) = AR(I) + 30
Next I

470 Cls: Print "** TOP SECRET **":
Print "STRENGTH"; P1, "OFFENSE"; S1, "HTH COMBAT"; T1: If SX = 1 Then M$ = "MALE" Else M$ = "FEMALE"
480 Print " SEX "; M$: Print "CHARM"; P2, "DECEPTION"; S2, "WRESTLING"; T2, "HEIGHT"; Int(H / 12); Chr$(39); H - Int(H / 12) * 12; Chr$(34)
490 Print "WILLPOWER"; P3, "EVASlON"; S3, "SURPRISE"; T3, "WEIGHT"; WT; "LBS", "COURAGE"; P4, "DEACTIVATION"; S4; Tab(48); "AGE:"; AG; "YRS"
500 Print "KNOWLEDGE"; P5, "MOVEMENT"; S5;:
If HD = 1 Then M$ = "RIGHT HANDED" Else M$ = "LEFT HANDED"
510 Print Tab(50); M$: Print "COORDINATION"; P6; "/"; CG; " **LIFE LEVEL"; S6,
If GL = 1 Then M$ = "CONTACTS/GLASSES": GoTo 520: Else If GL = 2 Then M$ = "GLASSES ONLY": GoTo 520: Else M$ = "VISION 20/20"
520 Print Tab(50); M$
530 Print Tab(56 - Len(RC$)); "RACE: "; RC$
540 Print: Print "LANGUAGES:";: Print "NATIVE"; LF(1); " ";: If NL > 1 Then For I = 2 To NL: Print "OTHER"; Int(LF(I)); " ";: Next I
550 Print: Print: Print "AREAS OF KNOWLEDGE:": Print
For I = 1 To NA
    If AO(I) >= 1 And AO(I) <= 40 Then
        Print AK$(AO(I)); " "; Int(AR(I))
    End If
Next I
Print "ALL OTHERS"; Int(P5 / 2 + .5)
560 Print: X = 0: Input "ENTER 0 TO START OVER, 1 TO CHANGE PRIMARY TRAITS"; X
570 If X = 0 Then 95 Else GoTo 280
580 Rem VER. 1 JOE ULOWETZ 9/16/80
590 Rem ver. 2 Ian Weber 5/7/25



