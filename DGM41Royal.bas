Rem Royal, originally written by Marc Elwinger, published in Dragon Magazine 41, September 1980
Rem Updated to QBASIC by Ian Weber

Randomize Timer

1 Dim A(40)
Cls
For Z = 1 To 20
    A(Z) = 0
Next Z
For Z = 1 To 16
    Read A$
    B$ = A$
    2 R = Rnd(20)
    If R > 1 Then GoTo 2
    3 A(R) = 1
    R = Rnd(20)
    If R > 1 Then GoTo 3
    4 A(1) = 1
    Print A$, "="; A, B$; "="; B
Next Z
5 For Z = 1 To 20
    R = Rnd(20)
    A(Z) = 0
Next Z
6 Data "YORK","LANCASTER","WINSOR","KENT","SUSSEX","SHEFFIELD","CHESHIRE"
7 Data "CORNWALL","DEVON","NORFORK","SUFFORK","WESTMORELAND","ASHFORD","LINCOLN"
8 Data "EXETER","DURHAM","CORK","KERRY","MAYO","KILDARE"
9 Input Z
10 Cls
If Rnd(1) Then
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
70 If A(26) > 0 Then Print "AND"; A(26); "PRINCES"
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
140 Cls
Print "THE KING IS OF THE HOUSE "; A$
Print "THE QUEEN OF THE HOUSE "; B$
150 A(31) = Int(Rnd * 5)
If Rnd < 0.1 Then Print "THE KINGDOM IS AN ISLAND"
160 Print "THE NEIGHBORING KINGDOMS"
For Z = 1 To A(31)
    170 If (A(28) = 0) + (Rnd(1) > .85) Then GoTo 200
    180 Print "THE QUEEN'S FATHER OF THE HOUSE 2": A(28) = 0
    190 A(2) = A(2) + 3: A(1) = A(1) + 1: GoTo 230
    200 GoSub 1000: A(Q) = A(Q) + 2: Print "THE KINGDOM"; Z; "OF THE HOUSE"; Q
    220 E = 0
230 Next Z
240 X = Int((Rnd * 3) + 1): N = 5: GoSub 245: GoTo 290
241 A(32) = E
245 Print: GoSub 1000: If (A(28) = 1) * (Rnd(1) < .80) Then GoSub 2000
250 If (A(30) > 0) * (Rnd(1) < .05) Then GoSub 2010
260 If (A(23) > 0) * (Rnd(1) < 0.6) Then GoSub 2020
265 E = E + 1
270 If (A(29) > 0) * (Rnd(1) < .5) Then GoSub 2030
280 A(Q) = A(Q) + N: Print "THE "; A$; " OF THE HOUSE OF "; Q: X = X - 1: If X > 0 Then GoTo 245
281 Return
Rem Slight editorial adjustment, clarifying the intial line
Rem 290 INPUT Z
290 Input "Press Enter to continue..."; dummy$: Cls: X = Int((Rnd * 3) + 1): A$ = "MARQUIS": N = 4: GoSub 245
295 A(33) = E - A(32)
300 Input "Press Enter to continue..."; dummy$: Cls: R = E * Int((Rnd * 3) + 3): A$ = "COUNT": N = 1
302 X = R: If R > 7 Then X = 7: R = R - 7
304 GoSub 245: Input "Press Enter to continue..."; dummy$: Cls: If R > 7 GoTo 302
308 A(34) = E - A(33)
310 Input "Press Enter to continue..."; dummy$: Cls: X = Int((Rnd * 5) + 1): A$ = "EARL": N = 2: GoSub 245
320 Input "Press Enter to continue..."; dummy$: Cls: R = E * Int((Rnd * 3) + 3): A$ = "COUNT": N = 1
330 X = R: If R > 7 Then X = 7: R = R - 7
340 GoSub 245: Input "Press Enter to continue..."; dummy$: Cls: If R > 7 Then GoTo 330
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
