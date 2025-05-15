Option Base 1
10 Rem Runequest Character Generator
20 Rem STR=1, Con=2,SIZ=3,INT=4,POW=5,DEX=6,CHA=7
Rem 30 home
30 Cls
40 Input "ARE YOU USING A PRINTER (Y OR N)?"; A$
50 Rem attack bonus table
60 Data 1,-5,0,0,0,5,5
70 Data 4,-10,-5,0,5,10,5
80 Data 5,-5,0,0,0,5,5
90 Data 6,-10,-5,0,5,10,5
100 Dim AB(4, 7)
110 For A = 1 To 4: For B = 1 To 7: Read AB(A, B): Next B, A
120 Rem parry bonus table
130 Data 1,-5,0,0,0,5,5
140 Data 4,-10,-5,0,5,10,5
150 Data 5,-5,0,0,0,5,5
160 Data 6,-10,-5,0,5,10,5
170 Dim PB(4, 7)
180 For A = 1 To 4: For B = 1 To 7: Read PB(A, B): Next B, A
190 Rem DEFENCE BONUS
200 Data 1,-5,0,0,0,5,5
210 Data 4,-10,-5,0,5,10,5
220 Data 5,-5,0,0,0,5,5
230 Data 6,-10,-5,0,5,10,5
240 Dim DB(4, 7)
250 For A = 1 To 4: For B = 1 To 7: Read DB(A, B): Next B, A
260 Rem HIT POINT BONUS
270 Data 3,-2,-1,0,1,2,1
280 Data 5,-1,0,0,0,1,1
290 Dim HP(2, 7)
300 For A = 1 To 2: For B = 1 To 7: Read HP(A, B): Next B, A
310 Rem DAMAGE BONUS
320 Data "-1d4","0","+1d4","+1d6","+1d8"
330 Dim DB$(5)
340 For A = 1 To 5: Read DB$(A): Next A
350 Data 6,12,16,20
360 Dim DAB(4)
370 For A = 1 To 4: Read DAB(A): Next A
380 Rem perception  bonus
390 Data 4,-10,-5,0,5,10,5
400 Data 5,-5,0,0,0,5,5
410 Dim PRB(2, 7)
420 For A = 1 To 2: For B = 1 To 7: Read PRB(A, B): Next B, A
430 Rem STEALTH BONUSH
440 Data 3,10,5,0,-5,-10,-5
450 Data 4,-10,-5,0,5,10,5
460 Data 5,5,0,0,0,-5,-5
470 Data 6,-10,-5,0,5,10,5
480 Dim SB(4, 7)
490 For A = 1 To 4: For B = 1 To 7: Read SB(A, B): Next B, A
500 Rem Manipulation bonus
510 Data 1,-5,0,0,0,5,5
520 Data 4,-10,-5,0,5,10,5
530 Data 5,-5,0,0,0,5,5
540 Data 6,-10,-5,0,5,10,5
550 Dim MB(4, 7)
560 For A = 1 To 4: For B = 1 To 7: Read MB(A, B): Next B, A
570 Rem KNOWLEDGE BONUS
580 Data 4,-10,-5,0,5,10,5
590 Data 5,-5,0,0,0,5,5
600 Dim KB(2, 7)
610 For A = 1 To 2: For B = 1 To 7: Read KB(A, B): Next B, A
620 Rem STRIKE RANK
630 Data 22,15,7
640 Dim S1(3)
650 For A = 1 To 3: Read S1(A): Next A
660 Data 19,16,13,9,6
670 Dim S2(5)
680 For A = 1 To 5: Read S2(A): Next A
690 Rem RACES
700 Data "HUMAN",3+00,3+00,3+00,3+00,3+00,3+00,3+00
710 Data "BROO",2+06,1+12,2+06,3+00,3+00,3+00,2+00
720 Data "CRESTED DRAGONNEWT",2+00,3+00,2+00,3+00,2+00,2+06,3+00
730 Data "DUCK",2+01,2+06,1+02,3+00,3+00,2+06,2+00
740 Data "DWARF",4+00,2+06,2+00,3+00,3+00,2+06,3+00
750 Data "ELF",2+02,3+00,2+00,4+00,2+06,3+00,3+00
760 Data "MOROKANTH",3+00,3+00,3+00,3+00,3+00,2+03,3+00
770 Data "OGRE",2+12,2+06,3+00,2+06,3+00,3+00,2+06
780 Data "DARK TROLL",3+06,3+00,3+06,3+00,3+00,3+00,3+00
790 Dim R$(9, 7)
800 For A = 1 To 9: For B = 1 To 8: Read R$(A, B): Next B, A
810 Rem
820 Rem Creating the character
830








REM Ian here, functions cannot be declared inline in my version of BASIC, thus we make a style choice.
Function D6
    D6 = Int(Rnd * 6) + 1
End Function
Function CR (A)
    CR = Int((CH(A) - 1) / 4) + 1
End Function



