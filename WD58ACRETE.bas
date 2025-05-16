Rem ACRETE, by Steve Gilham, originally published in White Dwarf 58
Rem Updated to QBASIC by Ian Weber
10 Cls
20 Screen 2
30 Randomize Timer
40 Dim STO(500): Dim SWP(25, 5): Dim VS(25): Dim HLD(25, 5): Dim U$(25)
50 Input "Max e"; E: Input "stellar mass "; MS: Input "dust"; D: Input "gas"; G
60 If E = 0 Then E = .4
70 If MS = 0 Then MS = 1
80 If D = 0 Then D = 1
90 G = G * 25: If G = 0 Then G = 25
100 G = G / D
110 For I = 1 To 500
    120 R = (I / 10) / (MS ^ .33)
    130 U = R ^ .33
    140 STO(I) = D * 1.5 * R * R * Exp(-5! * U)
150 Next I

