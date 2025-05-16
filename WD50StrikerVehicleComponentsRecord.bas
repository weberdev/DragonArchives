Rem Program 1 in Computer Vehicle Design, originally published in White Dwarf 50 by Marcus Rowland
Rem updated to QBASIC by Ian Weber


10 '*******
20 '* Striker Vehicle Captcity and Costs Record*
30 '*******
40 Cls: Clear 5000: MASS = 0: VOL = 0: CST = 0: DefDbl M, C, V: DefInt Z
50 Dim A$(60), M(60), V(60), C(60): X = 0: VUSED = 0
60 'Program keeps track of up to 60 items. A$ = Item Name
70 Input "Item MASS "; M(X + 1)
80 Input "ENTER USABLE VEHICLE VOLUME (CUBIC METRES)"; VOL
90 Cls: If X = 59 Then Print "LAST ITEM OR PROGRAM OVERFLOWS"
100 GoSub 200: GoSub 3000: GoSub 4050
110 X = X + 1: N = X: T = 0: GoTo 110
120 '
130 ' *** Utilizing the Data ***
140 '
150 Cls: GoSub 2000: Print "FINAL DATA - CHOOSE AN OPTION:"
160 Print "1 - LIST FOR PRINTER": Print "2 - REVIEW LIST"
170 Print "3 - MODIFY LIST": Print "4 - START AGAIN"
180 Print "5 - END"
190
200
210
220
230 Input Z: If Z < 1 Or Z > 5 Then GoTo 230
240 On Z GOTO 250, 300, 320, 10, 9999
250 LPrint "ITEM"; Tab(30); "MASS"; Tab(48); "VOLUME"; Tab(65); "COST"
260 For R = 1 To N
    270 LPrint A$(R); Tab(28); M(R); Tab(47); V(R); Tab(64); C(R)
271 Next
280 LPrint "TOTALS———"; Tab(29); MASS; Tab(47); VUSED; Tab(64); CST
290 GoTo 200
300 For X = 2 To N: Cls: GoSub 4000
310 For W = 1 To 100: Next W: Next X: GoTo 200
320 MASS = 0: VUSED = 0: CST = 0
330 For X = 0 To N: GoSub 2000: GoSub 4000: GoSub 4050
340 Next X: GoTo 200
350
1000 '*****Subroutines
1010 '
2000 '*****Print Vehicle Statistics
2010 Print "MASS ="; MASS; "KG": Print "USABLE VOLUME ="; VOL - VUSED; "CUBIC METRES": Print "COST = Cr."; CST: Return
2020 '
3000 '*****Data Entry Sequence
3010 Print "ENTER NEXT ITEM IN FOLLOWING SEQUENCE"
3020 Print "ITEM NAME, MASS (KG), VOLUME (CUBIC METRES), PRICE (CR.)"
3030 Print "Or enter 'XXX' to exit this section"
3040 Input A$(X), M(X), V(X), C(X): If A$(X) = "XXX" Then GoTo 200
3050 Print "IS THIS CORRECT?"
3060 '
4000 '*****Item Listing
4010 Print "ITEM"; X; "-"; A$(X): Print "MASS-"; M(X): Print "VOLUME-"; V(X): Print "COST-Cr."; C(X)
4020 Print "Is this correct?"
4030 Input "Enter 'N' if incorrect"; B$: If B$ = "N" Then GoTo 3000
4040 Return
4050 MASS = MASS + M(X): VUSED = VUSED + V(X): CST = CST + C(X)
4060 Return
9999 End
