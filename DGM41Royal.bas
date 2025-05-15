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
    A(1) = A(1) + 1
    GoTo 30
End If
35 PRINT "THE KING HAS ";A(23); "BROTHERS"
