Rem Tunnels and Trolls Combat
Rem Originally written by D G Evans in White Dwarf 44
Rem Updated to QBASIC by Ian Weber
Randomize Timer

Do
    Input "Number of delver dice? ", A
    Input "Delver adds? ", B

    E = 0
    For Z = 1 To A
        E = E + Int(Rnd * 6) + 1
    Next Z
    E = E + B

    Input "Number of monster dice? ", C
    Input "Monster adds? ", D

    F = 0
    For Z = 1 To C
        F = F + Int(Rnd * 6) + 1
    Next Z
    F = F + D

    Cls
    If E > F Then Print "MONSTERS TAKE "; E - F; " HITS"
    If E < F Then Print "DELVERS TAKE "; F - E; " HITS"
    If E = F Then Print "A DRAW"

Loop

