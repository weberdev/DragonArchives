Rem I found this program in a Dragon magazine on Archive.org. I think the original author is still active.
1 Randomize Timer
29 Rem AGENT KNOWLEDGE DATA
30 Dim AKS(39)
For I = 1 To 39
    Read AK$(I)
Next I
31 Data "AGRICULTURE","ANlMAL SCIENCE","ARCHlTECTURE","ART & CRAFT","ASTRONOMY","SPACE SCIENCE","BIOLOGY/BlOCHEMISTRY","BOTANY","CHEMISTRY","COMPUTER SCIENCE","ECOLOGY/EARTH SCIENCE","ECONOMICS/FINANCE","EDUCATION/INDOCTRINATION","ENG, AERONAUTICAL","ENG, CONSTRUCTION/CIVIL","ENG, ELECTRICAL","ENG, HYDRAULIC","ENG, INDUSTRIAL","ENG, MECHANICAL","ENG, TRANSPORTATION"
32 Data "FINE ARTS","GEOGRAPHY","GEOLOGY","HOME ECONOMICS","LAW","LITERATURE","MATHEMATICS/ACCOUNTlNG","MEDlClNE/PHYSIOLOGY","METALLURGY","MILITARY SCIENCE/WEAPONRY","PHOTOGRAPHY","PHYSICAL EDUCATION","PHYSICS","POLITICAL SCIENCE/IDEOLOGY","PSYCHOLOGY","RELIGION","SOCIAL SCIENCES","WORLD HISTORY/CURRENT AFFAIRS","","CHOICE"

Rem HEIGHT AND WEIGHT PARAMETERS
40 Dim HM(10)
41 Dim HS(10)
42 Dim HT(10)
43 For I = 1 To 10
    Read HM(I)
Next I
For I = 1 To 10
    Read HS(I)
Next I
For I = 1 To 10
    Read HT(I)
Next I

45 Data 0,-1,-1,0,0,1,1,2,2,0,-8,-7,-6,-5,-4,-4,-3,-3,-2,-2,3,3,3,4,4,4,5,5,6,7
Rem RANDOM
46 Dim LF(5), AO(10), AR(10)
Dim WM(10), WL(10), WH(10)
For I = 1 To 10
    Read WM(I)
Next I
For I = 1 To 10
    Read WL(I)
Next I
For I = 1 To 10
    Read WH(I)
Next I
47 Data 0,-10,-5,-5,0,0,5,10,15,0,-35,-30,-25,-20,-15,-15,-10,-10,-10,-10,15,20,25,30,40,50,75,100,125,150
50 Print "ADMINISTRATOR": Print " FILE 080"
60 Print: Print: Print " TOP SECRET"
70 Print: Print: Print " OPERATION:DOSSIER":
Print " CODE NAME:PAPERWEIGHT"
80 Print: Print " DO NOT ACCEPT TAPE FROM COURIER": Print "IF SEAL IS BROKEN"
83 Print: Print " (TOUCH ANY KEY)";
90 If Len(INKEYS) = 0 Then 90
95 MS$ = "BEGIN: AGENT GENERATION"
GoSub 100
GoTo 110
100 Print "** TOP SECRET **": Print: Print MS
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
290 Print "1. STRENGTH"; P1, "4. COURAGE"; P4: Print: Print "2. CHARM"; P2, "5. KNOWLEDGE"; P5: Print: Print "3. WlLLPOWER"; P3, "6. COORDlNATlON"; P6
300 Print: I = 0: Input "ENTER 0 TO CONTINUE, 1-6 TO CHANGE TRAIT (BY NUMBER), 7 TO RE-ROLL PRIMARY TRAITS, 8 TO START ALL OVER"; I
305 IF I<0 THEN goto 332 ELSE IF I=7 THEN 200 ELSE
If I = 8 Then 95 Else Print: Print: Print: Print "NEW VALUE DESIRED FOR TRAIT #"; I;: Input X
320 If I = 1 Then P1 = X Else If I = 2 Then P2 = X Else If I = 3 Then P3 = X Else If I = 4 Then P4 = X Else If I = 5 Then P5 = X Else If I = 6 Then P6 = X
330 GoTo 280
332 Print "ONE MOMENT PLEASE..."
335 Rem SECONDARY TRAITS
340 S1 = lNT(.5 + (P6 + P4) / 2): S2 = Int(.5 + (P4 + P2) / 2): S3 = lNT(.5 + (P2 + P6) / 2): S4 = Int(.5 + (P5 + P6) / 2): S5 = P1 + P3 + P6: S6 = Int(.5 + (P1 + P3) / 10)
345 Rem TERTIARY TRAITS
350 T1 = S3 + P1: T2 = S1 + P1: T3 = S2 + S3
355 Rem HEIGHT
360 H = 70: If SX = 2 Then H = 65
370 X = Int(Rnd * 10): H = H + HM(X): If X = 1 Then H = H + HS(Int(Rnd * 10)) Else If X = 10 Then H = H + HT(Int(Rnd * 10))
375 Rem AGE
380 AG=Int(RND*10)+Int(RND*10))+Int(RND*10)+12: IF CT=0 THEN AG=AG+Int(RND*20)
385 REM GLASSES?
390 GL=0: CG=P6: IF RND(10)<4THEN GL=1:
CG=P6—lNT(P6*RND(100)/100): IF RND(10)=1
THEN CL=2
395 REM WEIGHT


