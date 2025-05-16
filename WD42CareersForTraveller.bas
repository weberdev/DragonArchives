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
rem code removed because no longer relevant.
220 Rem pause 4e4
230

