1 ' REM Warp Speed Captain
2 ' REM © 1984 DJ Software
3 ' REM by MJM
4 ' REM restored by Ian Weber

5 Dim A$(12), INK(1) ' Identifiers and color
6 Locate 1, 6: Print "Warp Speed,"
7 Locate 3, 6: Print "Number of ships = ";
8 Input NO: If NO < 1 Or NO > 12 Then GoTo 6

9 Dim SS(12) ' Fixed size array regardless of NO
10 Locate 5, 6: Print "Identifiers for ships"
11 For A = 1 To NO
    12 Print: Print "Ship No."; A; ": ";
    13 Input S$: A$(A) = S$
14 Next A

15 Locate 10, 3: Print "TURN";
16 Input "Number of impulses required?"; IM
17 If IM <= 0 Or IM > 33 Then IM = Int(Rnd * 33) + 1

18 Print IM
19 Locate 13, 6: Print "Next"

20 For A = 1 To NO
    21 Print: Print "Ship No."; A; ": ";
    22 Input S$
    23 If UCase$(S$) = "X" Or Val(S$) > IM Or Val(S$) < 1 Then A = A - 1:
    24 SS(A) = Val(S$)
25 Next A

26 Locate 15, 3: Print "Press ANY KEY to CONTINUE"
27 Sleep: Cls

28 Print "Have any ships been destroyed or disengaged?"
29 Input A$: If UCase$(A$) = "Y" Then
    30 Print "ENTER TURN + 1": Cls: GoTo 15
31 End If

32 Cls: Print "Impulse no."; IM

33 Dim T(12), B(12), H(12) ' H is used in T(B) = T(B) + H(B)
34 For A = 1 To IM
    35 Locate 2, 3: Print "Impulse no."; A;
    36 For B = 1 To NO
        37 T(B) = T(B) + H(B)
        38 T(B) = Int(T(B))
        39 Print T(B);
    40 Next B
41 Next A

42 If IM = 32 Then Print: Print "Plasma torps & speed 32 drones"

43 Locate 2, 5: Print "Impulse no."; A;
44 Locate 4, 3: Print "Answer Y if the ship has fired a weapon this impulse";
45 Input A$: If UCase$(A$) = "Y" Then
    46 Locate 5, 3: Print "Weapon fired. Record"
47 End If

48 Locate 6, 3: Print "Enter turn number"
49 Input TURN

50 N = 1
51 T(N) = T(N) + 1
52 N = N + 1
53 If N > NO Then N = 1
54 If N = 0 Then End
55 GoTo 51

