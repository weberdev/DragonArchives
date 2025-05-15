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
50 M = Int(Rnd * 6 + 1): If M < 6 Then GoTo 11
60 Print: Input "LEVEL BELOW SURFACE"; L: Restore: P = Int(Rnd * 12)
70 Print: On L GOTO 1000, 2000, 3000
80 Q = Int(Rnd * 12): For I = 1 To Q: Read M$, N, T, H, A, C, D, S: Next I
90 B = Int(Rnd * N) * T
100 Print M$: Print "NUMBER APPEARING: "; B
110 Print "HIT POINTS: ";: For I = 1 To B: Print Int(Rnd * H) + A;: Next I: Print
120 Print "ARMOR CLASS: "; C
130 Print "MAX HIT DAMAGE: "; D
140 If S = 0 Then GoTo 9
150 Print "INTELLIGENT MONSTER REACTION: ";
Rem Ian Comment: I don't think this works semantically in QBASIC. Maybe it did at one point?
Rem 160 R = Int(Rnd * 6) * 2
Rem /this/ should work.
160 R = Int(Rnd * 6 + 1) + Int(Rnd * 6 + 1)
170 If R = 2 Then Print "ATTACKS IMMEDIATELY!": GoTo 9
180 If R < 6 Then Print "HOSTILE REACTION": GoTo 9
190 If R < 9 Then Print "UNCERTAIN": GoTo 9
200 If R < 12 Then Print "FRIENDLY": GoTo 9
210 If R = 12 Then Print "VOLUNTEERS HELP": GoTo 9
220 End

1000 If P < 9 Then GoTo 80
1010 If P = 12 Then For I = 1 To 24: Read M$, N, T, H, A, C, D, S: Next I: GoTo 80
1020 For I = 1 To 12: Read M$, N, T, H, A, C, D, S: Next I: GoTo 80

2000 If P < 4 Then GoTo 80
2010 If P < 10 Then For I = 1 To 12: Read M$, N, T, H, A, C, D, S: Next I: GoTo 80
2020 For I = 1 To 24: Read M$, N, T, H, A, C, D, S: Next I: GoTo 80

3000 If P = 1 Then GoTo 80
3010 If P < 5 Then For I = 1 To 12: Read M$, N, T, H, A, C, D, S: Next I: GoTo 80
3020 For I = 1 To 24: Read M$, N, T, H, A, C, D, S: Next I: GoTo 80

4100 Data "KOBOLD",4,3,4,0,7,4,1,"SEER",2,1,8,0,9,8,1
4110 Data "ORC",5,1,8,0,7,6,1,"SKELETON",6,1,4,0,6,6,0
4120 Data "GIANT RAT",4,3,4,0,7,4,0,"ZOMBIE",4,1,8,0,8,8,0
4130 Data "BANDIT",5,1,8,0,6,6,1,"GIANT SPIDER",3,1,4,1,8,4,0
4140 Data "STIRGE",5,1,4,0,7,3,0,"FOOTPAD",4,1,8,0,7,6,1
4150 Data "ELF",6,1,6,0,5,10,1,"GELATINOUS CUBE",1,1,12,0,8,8,0
4160 Data "HOBGOBLIN",5,1,8,0,6,8,1,"GNOLL",5,1,6,0,8,8,1
4170 Data "GIANT TOAD",6,1,12,1,7,6,0,"GHOUL",4,1,6,0,8,8,0
4180 Data "WARRIOR",5,1,8,0,8,8,1,"CONJURER",4,1,12,0,9,8,1
4190 Data "SHAMAN",5,1,8,0,8,8,1,"ROBBER",4,1,8,0,8,8,1
4200 Data "LEPRECHAUN",4,2,4,0,8,4,1,"RUST MONSTER",1,1,20,0,9,2,0
4210 Data "PIERCER",1,8,0,3,6,0,"CARRION CRAWLER",1,1,18,1,7,0,0
4220 Data "BUGBEAR",4,2,8,1,5,8,0,"OGRE",4,1,24,1,6,10,0
4230 Data "WIGHT",3,1,18,0,5,0,0,"HARPY",3,1,8,0,7,4,0
4240 Data "TROLL",1,1,36,3,6,6,0,"WERERAT",4,1,8,0,7,4,0
4250 Data "OCHRE JELLY",1,1,30,2,8,0,0,"DWARF",6,3,6,0,7,6,1
4260 Data "WEREWOLF",2,1,12,1,8,8,0,"GIANT TICK",5,1,8,0,7,8,0
4270 Data "GIANT SNAKE",2,1,32,0,5,10,0,"SHRIEKER",4,2,24,0,7,8,0


