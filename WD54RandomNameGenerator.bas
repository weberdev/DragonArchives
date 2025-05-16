Rem RANDOM NAME GENERATOR, ORIGINALLY WRITTEN BY M. BILLENNESS
Rem Originall published in White Dwarf 54
Rem transcribed into QBASIC by Ian Weber.


Option Base 1
Randomize Timer

Dim N As Integer, M As Integer, P As Integer
Dim L As Integer, Q As Integer, X As Integer
Dim A As String, B As String
Dim R As String, K As Integer, J As Integer
Dim Frag$(64)
Dim Count As Integer

' Initialize constants
N = 6: M = 26: P = 13

' Load fragments from DATA into array
Restore
Do
    Read A
    If A = "END" Then Exit Do
    Count = Count + 1
    Frag$(Count) = A
Loop

Do
    ' Name length logic
    L = Int(Rnd * 16) + 3
    If L > 12 Then L = Int(Rnd * 3) + 2
    If L > 8 And Rnd > 0.1 Then L = 1
    If Rnd < 0.9 Then L = L + 1

    Q = M: B = ""

    ' Build name
    For K = 1 To L
        If K Mod 2 = 0 Then
            X = Int(Rnd * Q) + 1
        Else
            X = Int(Rnd * N) + 1
        End If
        B = B + Frag$(X)
        Q = M + P
    Next

    Cls
    Print
    Print ">>> "; Chr$(141) + B + Chr$(141)
    Print
    Print "Press space to generate another name"
    Do: R = InKey$: Loop While R = ""
Loop

' === Fragment DATA ===
Data A,E,I,O,U,Y,B,C,D,F,G
Data H,J,K,L,M,N,P,Q,R,S,T
Data V,W,X,Z,TH,ST,FR,SM
Data BR,SH,BL,HR,RN,NG,RD,RT
Data LF,HN,LD,CK,RB,NO,DS
Data END

