Rem Royal, originally written by Marc Elwinger, published in Dragon Magazine 41, September 1980
rem Updated to QBASIC by Ian Weber

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

