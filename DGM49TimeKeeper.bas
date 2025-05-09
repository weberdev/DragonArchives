Rem source: Dragon 49
Rem original author Jim Holz

1 Cls: Print "WANDERING MONSTER (LEV. 1-3) / TIME KEEPING PROGRAM"
3 Print: Print "ENTER TIME OF DAY FOR ADVENTURE BASED ON 24 HOUR CLOCK"
5 Print: Input "ENTER AS HOUR (1-24), MINUTES(1-59) - USE COMMA"; HH, TM
Rem added error checking for negative values
7 If HH > 24 Or TM > 59 Or HH < 0 Or TM < 0 Then GoTo 1
9 Print: Print "PRESS ONE OF THE FOLLOWING FOR TIME KEEPING..."
11 Input "S = (1 SEGMENT), R = (1 ROUND), T = (1 TURN)"; A1$
13 If A1$ = "S" Or A1$ = "R" Or A1$ = "T" Then GoTo 15 Else GoTo 11
15 T1 = 0: T2 = 0: T3 = 0
17 If A1$ = "S" Then T1 = 6 Else GoTo 21
19 SC = SC + T1: If SC = 60 Then SC = 0: TM = TM + 1
21 If A1$ = "R" Then T2 = 1: TM = 1 Else GoTo 25
23 MI = MI + T2
25 If A1$ = "T" Then T3 = 10: TM = TM + T3
27 If (TM + MI) >= 60 Then TM = TM - 60: HH = HH + 1
29 If HH >= 23 Then HH = 0
33 Print: Print "TIME IN ADVENTURE "; HH; ":"; (TM + MI); "."; SC: Print
35 If (TM + MI) > 29 And (TM + MI) < 40 Then Y = Y + 1
37 If (TM + MI) = 0 And (TM + MI) < 10 Then Y = Y + 1
39 If (TM + MI) > 10 And (TM + MI) < 30 Then Y = 0
41 If (TM + MI) > 39 Then Y = 0
43 If Y = 1 Then GoTo 50 Else GoTo 11
50 M = Int(Rnd * 6): If M < 6 Then GoTo 11
60 Print: Input "LEVEL BELOW SURFACE"; L: Restore: P = Int(Rnd * 12)
70 PRINT
