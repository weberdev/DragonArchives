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
100 Dim AB(4, 6)
110 For A = 1 To 4: For B = 0 To 6: Read AB(A, B): Next B, A
120 Rem parry bonus table
130 Data 1,-5,0,0,0,5,5
140 Data 4,-10,-5,0,5,10,5
150 Data 5,-5,0,0,0,5,5
160 Data 6,-10,-5,0,5,10,5
170 Dim PB(4, 6)
180 For A = 1 To 4: For B = 0 To 6: Read PB(A, B): Next B, A
190 Rem DEFENCE BONUS
200 Data 1,-5,0,0,0,5,5
210 Data 4,-10,-5,0,5,10,5
220 Data 5,-5,0,0,0,5,5
230 Data 6,-10,-5,0,5,10,5
240 Dim DB(4, 6)
250 For A = 1 To 4: For B = 0 To 6: Read DB(A, B): Next B, A
260 Rem HIT POINT BONUS
270 Data 3,-2,-1,0,1,2,1
280 Data 5,-1,0,0,0,1,1
290 Dim HP(2, 6)
300 For A = 1 To 2: For B = 0 To 6: Read HP(A, B): Next B, A


