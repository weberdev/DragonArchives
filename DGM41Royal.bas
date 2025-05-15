Rem Royal, originally written by Marc Elwinger, published in Dragon Magazine 41, September 1980
Rem Updated to QBASIC by Ian Weber

Randomize Timer

1 Dim A(40): Dim A$(40)
For Z = 1 To 20
    A(Z) = 0
Next Z

For Z = 1 To 10
    Read H$
    5 R = Int(Rnd * 20) + 1
    If A(R) <> 0 Then GoTo 5
    A(R) = 1
    A$(R) = H$
Next Z

Do
    R1 = Int(Rnd * 20) + 1
Loop While A$(R1) = ""

Do
    R2 = Int(Rnd * 20) + 1
Loop While A$(R2) = "" Or R2 = R1

A(1) = 20: A$(1) = A$(R1)
A(2) = 10: A$(2) = A$(R2)

6 Data "YORK","LANCASTER","WINSOR","KENT","SUSSEX","SHEFFIELD","CHESHIRE"
7 Data "CORNWALL","DEVON","NORFORK","SUFFORK","WESTMORELAND","ASHFORD","LINCOLN"
8 Data "EXETER","DURHAM","CORK","KERRY","MAYO","KILDARE"
10
If Rnd(1) < .95 Then
    Print "LONG LIVE THE KING"
    A(1) = 20
Else
    Print "THE KING IS DEAD! LONG LIVE THE KING"
    A(1) = 10
    A(21) = 1
End If
20 Print "AND THE ROYAL FAMILY": If Rnd(1) < 0.8 Then Print "THE QUEEN": A(2) = 10: A(22) = 1
30 If Rnd(1) < 0.1 Then
    A(23) = A(23) + 1
    GoTo 30
End If
35 Print "THE KING HAS "; A(23); "BROTHERS"
40 If Rnd(1) < 0.1 Then
    A(24) = A(24) + 1
    GoTo 40
End If
45 Print "THE KING HAS "; A(24); "UNMARRIED SISTERS"
50 If (Rnd(1) < 0.65) + ((A(22) = 0) * (Rnd(1) < 0.1)) Then
    A(25) = 1: Print "THE CROWN PRINCE"
End If
60 If (A(25)) * (Rnd(1) < .65) Then
    A(26) = A(26) + 1: GoTo 60
End If
70 If A(26) > 0 Then Print "AND"; A(26); " PRINCES"
80 If (Rnd(1) < 0.6) + ((A(22) = 0) * (Rnd(1) < 0.1)) Then A(27) = A(27) + 1: GoTo 80
90 If A(27) > 0 Then Print A(27); "PRINCESS"
100 If (A(22) > 0) * (Rnd(1) < .35) Then A(28) = 1
110 If (A(22) > 0) * (Rnd(1) < 0.4) Then
    A(29) = A(29) + 1
    GoTo 110
End If
120 If Rnd(1) < 0.3 Then
    A(30) = A(30) + 1
    GoTo 120
End If
Rem Slight editorial adjustment, clarifying the intial line
Rem 130 INPUT Z
130 Input "Press Enter to continue..."; dummy$
Print "THE KING IS OF THE HOUSE "; A$(1)
Print "THE QUEEN OF THE HOUSE "; A$(2)
150 A(31) = Int(Rnd * 5)
If Rnd < 0.1 Then Print "THE KINGDOM IS AN ISLAND"
160 Print "THE NEIGHBORING KINGDOMS"
For Z = 1 To A(31)
    170 If (A(28) = 0) + (Rnd(1) > .85) Then GoTo 200
    180 Print "THE QUEEN'S FATHER OF THE HOUSE "; A$(2): A(28) = 0
    190 A(2) = A(2) + 3: A(1) = A(1) + 1: GoTo 230
    200 GoSub 1000: A(Q) = A(Q) + 2: Print "THE KINGDOM"; Z; "OF THE HOUSE "; A$(Q)
230 Next Z
Input "Press Enter to continue..."; dummy$
231 E = 0
232 A(32) = E

240 A$ = "DUKE": X = Int((Rnd * 3) + 1): N = 5: Cls: GoSub 245

245 Print: GoSub 1000: If (A(28) = 1) * (Rnd(1) < .80) Then GoSub 2000: Return

290 A$ = "MARQUIS": X = Int((Rnd * 3) + 1): N = 4: Cls: GoSub 245
295 A(33) = E - A(32)

300 Input "Press Enter to continue..."; dummy$
A$ = "COUNT": R = E * Int((Rnd * 3) + 3): N = 1
302 X = R: If R > 7 Then X = 7: R = R - 7
304 GoSub 245: Input "Press Enter to continue..."; dummy$: If R > 0 Then GoTo 302
308 A(34) = E - A(33)

310 Input "Press Enter to continue..."; dummy$
A$ = "EARL": X = Int((Rnd * 5) + 1): N = 2: GoSub 245

320 Input "Press Enter to continue..."; dummy$
A$ = "COUNT": R = E * Int((Rnd * 3) + 1): N = 1
330 X = R: If R > 7 Then X = 7: R = R - 7
340 GoSub 245: Input "Press Enter to continue..."; dummy$: If R > 0 Then GoTo 330
350 A(35) = E - A(34)
999 End

1000 Q = 0: For W = 1 To 20: Q = Q + A(W): Next W: Q = Q * Rnd(1): For W = 1 To 20
    1010 Q = Q - A(W): If Q <= 0 Then Q = W: Return
1020 Next W
2000 A(28) = 0: Q = 2: Print "THE QUEEN'S FATHER": Return
2010 A(30) = A(30) - 1: Q = 1: Print "THE KING'S UNCLE": Return
2020 A(23) = A(23) - 1: Q = 1: Print "THE KING'S BROTHER": Return
2030 A(29) = A(29) - 1: Q = 2: Print "THE QUEEN'S BROTHER": Return
32000 For Z = 1 To 20 Step 2: Print A(Z), A(Z + 1): Next Z
