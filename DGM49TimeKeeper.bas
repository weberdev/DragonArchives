Rem source: Dragon 49
Rem original author Jim Holz

1 Cls: Print "WANDERING MONSTER (LEV. 1-3) / TIME KEEPING PROGRAM"
3 Print: Print "ENTER TIME OF DAY FOR ADVENTURE BASED ON 24 HOUR CLOCK"
5 Print: Input "ENTER AS HOUR (1-24), MINUTES(1-59) - USE COMMA"; HH, TM
Rem added error checking for negative values
7 If HH > 24 Or TM > 59 Or HH < 0 Or TM < 0 Then GoTo 1
9 Print: Print "PRESS ONE OF THE FOLLOWING FOR TIME KEEPING..."
11 INPUT "S = (1 SEGMENT), R = (1 ROUND), T = (1 TURN)": A1$
