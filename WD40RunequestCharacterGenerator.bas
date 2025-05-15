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


