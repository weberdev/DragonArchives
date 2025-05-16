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
Rem D6 function used to be here.
830
Rem Bonus calculation function used to be here.
850
860 Dim CH(7)
870 Cls
880 Let AK = 0: PA = 0: DE = 0: ST = 0: MA = 0: KN = 0: PER = 0
890 For A = 1 To 7: Let CH(A) = 0: Next A
900 For A = 1 To 9: Print Tab(5); A; ". "; R$(A, 0): Next A
910 Print: Input "WHAT RACE (1-9)? "; R
920 For A = 1 To 7
    930 Let B1 = Val(Left$(R$(R, A), 1))
    940 Let B2 = Val(Right$(R$(R, A), 2))
    950 For B = 1 To B1
        960 Let CH(A) = CH(A) + D6
    970 Next B
    980 Let CH(A) = CH(A) + B2
990 Next A
1000 Cls
1010 Input "WHAT IS THE NAME OF YOUR CHARACTER? "; NAME$
1020 If NAME$ = "" Then Let NAME$ = "       "
1030 Let HP = CH(2)
1040 For B = 1 To 7
    1050 Let FB = CR(B)
    1060 For C = 1 To 4
        1070 If AB(C, 0) = B And FB < 5 Then Let AK = AK + AB(C, 5) + (AB(C, 6) * (FB - 5))
        1080 If AB(C, 0) = B And FB > 5 Then Let AK = AK + AB(C, FB)
        1090 If PB(C, 0) = B And FB < 5 Then Let PA = PA + PB(C, 5) + (PB(C, 6) * (FB - 5))
        1100 If PB(C, 0) = B And FB > 5 Then Let PA = PA + PB(C, FB)
        1110 If DB(C, 0) = B And FB < 5 Then Let DE = DE + DB(C, 5) + (DB(C, 6) * (FB - 5))
        1120 If DB(C, 0) = B And FB > 5 Then Let DE = DE + DB(C, FB)
        1130 If SB(C, 0) = B And FB < 5 Then Let ST = ST + SB(C, 5) + (SB(C, 6) * (FB - 5))
        1140 If SB(C, 0) = B And FB > 5 Then Let ST = ST + SB(C, FB)
        1150 If MB(C, 0) = B And FB < 5 Then Let MA = MA + MB(C, 5) + (MB(C, 6) * (FB - 5))
        1160 If MB(C, 0) = B And FB > 5 Then Let MA = MA + MB(C, FB)
    1170 Next C
    1180 For C = 1 To 2
        1190 If KB(C, 0) = B And FB > 5 Then Let KN = KN + KB(C, 5) + (KB(C, 6) * (FB - 5))
        1200 If KB(C, 0) = B And FB <= 5 Then Let KN = KN + KB(C, FB)
        1210 If PRB(C, 0) = B And FB > 5 Then Let PER = PER + PRB(C, 5) + (PRB(C, 6) * (FB - 5))
        1220 If PRB(C, 0) = B And FB <= 5 Then Let PER = PER + PRB(C, FB)
        1230 If HPB(C, 0) = B And FB > 5 Then Let HP = HP + HPB(C, 5) + (HPB(C, 6) * (FB - 5))
        1240 If HPB(C, 0) = B And FB <= 5 Then Let HP = HP + HPB(C, FB)
1250 Next C, B
1260 Rem LOCAL HITS
1270 If HP < 4 Then Let LH = 1
1280 If HP > 3 Then Let LH = Int((HP - 1) / 3)
1290 Rem DAMAGE BONUS
1300 Let AV = Int((CH(1) + CH(3)) / 2 + 0.5)
1310 For A = 4 To 1 Step -1
    1320 If AV <= DAB(A) Then Let DA$ = DB$(A)
1330 Next A
1340 If AV > DAB(4) Then Let DA$ = "+" + Str$(Int((AV - 5) / 8)) + "D6"
1350 Rem STRIKE RANK
1360 For A = 1 To 3
    1370 If CH(3) < S1(A) Then Let S1 = A
1380 Next A
1390 For A = 1 To 5
    1400 If CH(6) < S2(A) Then Let S2 = A
1410 Next A
1420 Let SR = S1 + S2
1430 Rem THE PRINTOUT
1440 Cls
Rem commenting this line out, obvz 1450 IF A$ = "Y" then PRF 2
1460 Print: Print NAME$; " THE "; R$(R, 0): Print
1470







Rem Ian here, functions cannot be declared inline in my version of BASIC, thus we make a style choice.
Function D6
    D6 = Int(Rnd * 6) + 1
End Function
Function CR (A)
    CR = Int((CH(A) - 1) / 4) + 1
End Function



