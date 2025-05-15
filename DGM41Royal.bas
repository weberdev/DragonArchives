Rem Royal, originally written by Marc Elwinger, Dragon #41 (1980)
Rem Updated to QBASIC by Ian Weber

Randomize Timer
Cls
Dim A(40), A$(40)
For Z = 1 To 20: A(Z) = 0: Next Z
For Z = 1 To 20: Read A$(Z): Next Z

Do: R1 = Int(Rnd * 20) + 1: Loop While A$(R1) = ""
Do: R2 = Int(Rnd * 20) + 1: Loop While A$(R2) = "" Or R2 = R1

A(1) = 20: A(2) = 10: A$ = A$(R1): B$ = A$(R2)

If Rnd < .95 Then Print "LONG LIVE THE KING": A(1) = 20 Else Print "THE KING IS DEAD! LONG LIVE THE KING": A(1) = 10: A(21) = 1
Print "AND THE ROYAL FAMILY": If Rnd < 0.8 Then Print "THE QUEEN": A(22) = 1

If Rnd < 0.1 Then A(23) = A(23) + 1: GoTo 30
30 Print "THE KING HAS "; A(23); " BROTHERS"
If Rnd < 0.1 Then A(24) = A(24) + 1: GoTo 40
40 Print "THE KING HAS "; A(24); " UNMARRIED SISTERS"
If (Rnd < 0.65) Or ((A(22) = 0) And (Rnd < 0.1)) Then A(25) = 1: Print "THE CROWN PRINCE"
If A(25) And Rnd < .65 Then A(26) = A(26) + 1: GoTo 60
60 If A(26) > 0 Then Print "AND "; A(26); " PRINCES"
If (Rnd < 0.6) Or ((A(22) = 0) And (Rnd < 0.1)) Then A(27) = A(27) + 1: GoTo 80
80 If A(27) > 0 Then Print A(27); " PRINCESS"
If A(22) And Rnd < .35 Then A(28) = 1
If A(22) And Rnd < 0.4 Then A(29) = A(29) + 1: GoTo 110
110 If Rnd < 0.3 Then A(30) = A(30) + 1: GoTo 120

120 Input "Press Enter to continue..."; D$
Cls: Print "THE KING IS OF THE HOUSE "; A$
Print "THE QUEEN OF THE HOUSE "; B$
A(31) = Int(Rnd * 5): If Rnd < 0.1 Then Print "THE KINGDOM IS AN ISLAND"
Print "THE NEIGHBORING KINGDOMS"
For Z = 1 To A(31)
    If A(28) = 0 Or Rnd > .85 Then GoSub 1000: A(Q) = A(Q) + 2: Print "THE KINGDOM "; Z; " OF THE HOUSE "; A$(Q)
    If A(28) Then Print "THE QUEEN'S FATHER OF THE HOUSE "; B$: A(28) = 0: A(2) = A(2) + 3: A(1) = A(1) + 1
Next Z

Input "Press Enter to continue..."; D$: Cls
E = 0: A(32) = E

A$ = "DUKE": X = Int(Rnd * 3) + 1: N = 5: GoSub 245
A$ = "MARQUIS": X = Int(Rnd * 3) + 1: N = 4: GoSub 245
A(33) = E - A(32)

Input "Press Enter to continue..."; D$: Cls
A$ = "COUNT": R = E * (Int(Rnd * 3) + 3): N = 1
While R > 0
    X = R
    If R > 7 Then
        X = 7
        R = R - 7
    Else
        R = 0
    End If
    GoSub 245
Wend
A(34) = E - A(33)

Input "Press Enter to continue..."; D$: Cls
A$ = "EARL": X = Int(Rnd * 5) + 1: N = 2: GoSub 245

Input "Press Enter to continue..."; D$: Cls
A$ = "COUNT": R = E * (Int(Rnd * 3) + 3): N = 1
While R > 0
    If R > 7 Then
        X = 7
        R = R - 7
    Else
        X = R
        R = 0
    End If
    GoSub 245
Wend

A(35) = E - A(34)

End

245 Print: GoSub 1000
If A(28) And Rnd < .8 Then GoSub 2000
If A(30) And Rnd < .05 Then GoSub 2010
If A(23) And Rnd < .6 Then GoSub 2020
If A(29) And Rnd < .5 Then GoSub 2030
E = E + 1: A(Q) = A(Q) + N
Print "THE "; A$; " OF THE HOUSE "; A$(Q)
X = X - 1: If X > 0 Then GoTo 245
Return

1000 Q = 0
For W = 1 To 20
    Q = Q + A(W)
Next W
Q = Q * Rnd
For W = 1 To 20
    Q = Q - A(W)
    If Q <= 0 Then
        Q = W
        Return
    End If
Next W
Return

2000 A(28) = 0: Q = 2: Print "THE QUEEN'S FATHER": Return
2010 A(30) = A(30) - 1: Q = 1: Print "THE KING'S UNCLE": Return
2020 A(23) = A(23) - 1: Q = 1: Print "THE KING'S BROTHER": Return
2030 A(29) = A(29) - 1: Q = 2: Print "THE QUEEN'S BROTHER": Return

6 Data "YORK","LANCASTER","WINSOR","KENT","SUSSEX","SHEFFIELD","CHESHIRE"
7 Data "CORNWALL","DEVON","NORFORK","SUFFORK","WESTMORELAND","ASHFORD","LINCOLN"
8 Data "EXETER","DURHAM","CORK","KERRY","MAYO","KILDARE"

