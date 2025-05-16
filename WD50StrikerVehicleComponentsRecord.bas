Rem Program 1 in Computer Vehicle Design, originally published in White Dwarf 50 by Marcus Rowland
Rem updated to QBASIC by Ian Weber

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
160 Print "1 - LIST FOR PRINTER": Print "2 — REVIEW LIST"
170 Print "3 - MODIFY LIST": Print "4 — START AGAIN"
180 Print "5 - END"
190 Input Z: If Z < 1 Or Z > 5 Then GoTo 230
200 On Z GOTO 250, 320, 1020, 300, 9999
230 Input T: If Z < 1 Or Z > 5 Then GoTo 230
240 On Z GOTO 250, 320, 1020, 300, 9999
250 LPrint "ITEM"; Tab(30); "MASS"; Tab(48); "VOLUME"; Tab(65); "COST"
260 For R = 1 To N
    270 LPrint A$(R); Tab(28); M(R); Tab(47); V(R); Tab(64); C(R)
280 Next
290 LPrint "TOTALS———"; Tab(29); MASS; Tab(47); VUSED; Tab(64); CST
300 GoTo 200
310 '
320 For X = 1 To N: Cls: GoSub 400
    330 Print "ITEM "; X: Print A$(X)
    340 Input "PRESS RETURN TO CONTINUE"; D$
350 Next X
360 GoTo 200
370 '
380 ' *** Subroutine: Display item ***
390 '
400 Print "ITEM "; X: Print A$(X)
410 Print "MASS "; M(X), "VOLUME "; V(X), "COST "; C(X)
420 Return
430 '
440 ' *** Subroutine: Modify item ***
450 '
460 Cls: Input "WHICH ITEM? "; X
470 If X < 1 Or X > N Then Print "NOT POSSIBLE": GoTo 460
480 GoSub 400
490 Input "IS THIS ITEM TO BE DELETED (Y/N)? "; A$
500 If A$ = "Y" Or A$ = "y" Then A$(X) = "": M(X) = 0: V(X) = 0: C(X) = 0: Return
510 GoSub 3000
520 GoSub 4050: Return
530 '
540 ' *** Start again (clear data) ***
550 '
560 For X = 1 To 60
    570 A$(X) = "": M(X) = 0: V(X) = 0: C(X) = 0
580 Next
590 MASS = 0: VUSED = 0: CST = 0: X = 0
600 GoTo 70

610 '
620 ' *** Subroutine: Enter item data ***

