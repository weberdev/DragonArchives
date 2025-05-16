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
150 Cls: GoSub 2000: Print "FINAL DATA — CHOOSE AN OPTION:"
160 Print "1 — LIST FOR PRINTER": Print "2 — REVIEW LIST"
170 Print "3 — MODIFY LIST": Print "4 — START AGAIN"
180 Print "5 — END"
190 Input Z: If Z < 1 Or Z > 5 Then GoTo 230
200 On Z GOTO 250, 320, 1020, 300, 9999

