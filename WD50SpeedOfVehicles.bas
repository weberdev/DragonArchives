Rem Speed of Vehicle with Wheels and Grav Unit
10 '********
20 '*Effects of Shared Power on Speed*
30 '********
35 Cls
40 Input "VEHICLE WEIGHT TONS"; W 'Fully laden wieght.
50 Input "GRAV. THRUST,  TONS"; T 'Thrust with full gravs.
60 Input "POWER OUTPUT,  MW"; M 'Max. power output.
70 For N = 0 To 100
    80 TH = T * 0.01 * N 'Lift with partial gavs.
    90 EW = W - TH: If EW < 0 Then GoTo 200 'Effective wieght
    100 PW = Int((M * 0.01 * (100 - N) / EW) * 1000) 'Power/weight ratio
    110 If PW < 26 Then SP = Int((PW / 2) + 1) * 5 ' Unadjusted Speed
    111 If PW > 25 Then SP = 70
    120 If PW > 30 Then SP = SP + PW - 30
    130 SP = SP + 50
    140 SP = SP + 10
    150 SP = SP + 15
    160 Print N; "%"; Tab(10); TH; "Tons Thrust"; Tab(30);
170 Next N
180 End
200 Print "We Have Lift Off!!!!!": End
