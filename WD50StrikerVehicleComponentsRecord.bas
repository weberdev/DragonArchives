' Program 1: Striker Vehicle Capacity & Costs Record
' Originally published in White Dwarf #50 by Marcus Rowland
' Translated and preserved in QBASIC by Ian Weber

Cls: Clear 5000
MASS = 0: VOL = 0: CST = 0
DefDbl M, C, V: DefInt Z
Dim A$(60), M(60), V(60), C(60)
X = 0: VUSED = 0

' --- Initial Item Entry ---
Input "Item MASS "; M(X + 1)
Input "ENTER USABLE VEHICLE VOLUME (CUBIC METRES)"; VOL
Cls
If X = 59 Then Print "LAST ITEM OR PROGRAM OVERFLOWS"
GoSub 200
GoSub 3000
GoSub 4050
X = X + 1: N = X: T = 0
GoTo 70

' --- Menu ---
200 Cls
GoSub 2000
Print "FINAL DATA - CHOOSE AN OPTION:"
Print "1 - LIST FOR PRINTER"
Print "2 - REVIEW LIST"
Print "3 - MODIFY LIST"
Print "4 - START AGAIN"
Print "5 - END"
Input Z: If Z < 1 Or Z > 5 Then GoTo 200
On Z GOTO 250, 300, 320, 10, 9999

' --- Option 1: Print List ---
250 LPrint "ITEM"; Tab(30); "MASS"; Tab(48); "VOLUME"; Tab(65); "COST"
For R = 1 To N
    LPrint A$(R); Tab(28); M(R); Tab(47); V(R); Tab(64); C(R)
Next
LPrint "TOTALS"; Tab(29); MASS; Tab(47); VUSED; Tab(64); CST
GoTo 200

' --- Option 2: Review List ---
300 For X = 1 To N
    Cls: GoSub 4000
    For W = 1 To 100: Next W
Next
GoTo 200

' --- Option 3: Modify List ---
320 MASS = 0: VUSED = 0: CST = 0
For X = 1 To N
    GoSub 2000
    GoSub 4000
    GoSub 4050
Next
GoTo 200

' --- Subroutine: Print Vehicle Stats ---
2000 Print "MASS ="; MASS; "KG"
Print "USABLE VOLUME ="; VOL - VUSED; "CUBIC METRES"
Print "COST = Cr."; CST
Return

' --- Subroutine: Item Entry ---
3000 Print "ENTER NEXT ITEM IN FOLLOWING SEQUENCE:"
Print "ITEM NAME, MASS (KG), VOLUME (CUBIC METRES), PRICE (CR.)"
Print "Or enter 'XXX' to exit this section"
Input A$(X), M(X), V(X), C(X)
If A$(X) = "XXX" Then GoTo 200
Print "IS THIS CORRECT?"
Return

' --- Subroutine: Item Listing ---
4000 Print "ITEM"; X; "-"; A$(X)
Print "MASS -"; M(X)
Print "VOLUME -"; V(X)
Print "COST - Cr."; C(X)
Input "Enter 'N' if incorrect"; B$
If B$ = "N" Then GoTo 3000
Return

' --- Subroutine: Update Totals ---
4050 MASS = MASS + M(X)
VUSED = VUSED + V(X)
CST = CST + C(X)
Return

' --- End ---
9999 End

