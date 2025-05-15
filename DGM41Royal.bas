Rem Royal, originally written by Marc Elwinger, published in Dragon Magazine 41, September 1980
Rem Updated to QBASIC by Ian Weber

Randomize Timer

1 Dim A(40)
Cls
For Z = 1 To 20
    R(Z) = 0
Next Z
For Z = 1 To 16
    Read A$
    B$ = A$
    2 R = Rnd(20)
    If R > 1 Then GoTo 2
    3 A(R) = 1
    R = Rnd(20)
    If R > 1 Then GoTo 3
    4 R(1) = 1
    Print A$, "="; A, B$; "="; B
Next Z
5 For Z = 1 To 20
    R = Rnd(20)
    R(Z) = 0
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
