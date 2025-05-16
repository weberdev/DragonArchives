Rem Careers in Traveller, published in White Dwarf 42
Rem Originally written by Marcus Rowland

10 Rem CAREERS FOR TRAVELLER
20 Rem By Marcus L Rowland
30 Dim A$(6)
40 Let A$(1) = "Strength"
50 Let A$(2) = "Dexterity"
60 Let A$(3) = "Endurance"
70 Let A$(4) = "Intelligence"
80 Let A$(5) = "Education"
90 Let A$(6) = "Social Standing"
100 Dim A(6)
110 Randomize Timer
120 Rem ************************
130 Rem CHARACTER STATISTICS
140 Rem *****************
150 For N = 1 To 6
    160 GoSub 1370
    170 Let A(N) = X
    180 GoSub 1020
190 Next N
200 Dim B$(25, 15)
210 Print "CHOOSE PREFERRED CAREER", "1: NAVY", "2: MARINES", "3: ARMY", "4: SCOUT", "5: MERCHANT", "6: OTHERS"
Rem code removed because no longer relevant.
220 Rem pause 4e4
230 Let PC = Val(InKey$)
240 If PC < 1 Or PC > 6 Then GoTo 220
250 GoSub 980
260 GoSub 1070
270 Let N = PC
280 GoSub 2900
290 GoSub 1180
Rem 300 PRINT AT 0,22 W$
310 Let RNK = 0
320 Let TRM = 0
330 Let AGE = 18
340 Let MNY = 0
350 Let GMB = 0
360 Let SKILLS = 0
370 If PC >= 2 And PC <= 4 Then Let SKILLS = 1
380 If PC = 2 Then Let B$(1, 1) = "CUTLASS"
390 If PC = 3 Then Let B$(1, 1) = "RIFLE"
400 If PC = 4 Then Let B$(1, 1) = "PILOT"
410 If PC > 1 And PC < 5 Then GoSub 1580
420 Let SKL = 0
430 Rem ****************
440 Rem   TERM CYCLE
450 Rem ****************
460 Rem SURVIVAL ROLL
470 Let S$ = "565755"
480 GoSub 1340




