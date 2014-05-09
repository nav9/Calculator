10 CLEAR:SCREEN 0, 0, 0: COLOR 7, 2: CLS : COLOR 15: DIM A(2): A(1) = 0: KEY OFF
20 LOCATE 3, 6: PRINT "з"; STRING$(57, "д"); "©"
30 LOCATE 4, 6: PRINT "Ё "; : COLOR 1, 8: PRINT STRING$(55, " "); : COLOR 7, 2: COLOR 15: PRINT " Ё"
40 LOCATE 5, 6: PRINT "Ё "; : COLOR 1, 8: PRINT STRING$(55, " "); : COLOR 7, 2: COLOR 15: PRINT " Ё"
50 LOCATE 6, 6: PRINT "ю"; STRING$(57, "д"); "ы"
60 LOCATE 2, 4: PRINT STRING$(73, "э")
70 LOCATE 22, 4: PRINT STRING$(73, "ъ")
80 COLOR 1, 15: LOCATE 3, 69: PRINT "здддд©"
90 LOCATE 4, 69: PRINT "Ё F1 Ё"
100 LOCATE 5, 69: PRINT "ЁHelpЁ"
110 LOCATE 6, 69: PRINT "юдддды": COLOR 7, 2
120 R = 3: C1 = 4: C2 = 76
130 COLOR 15: LOCATE R, C1: PRINT "ш": LOCATE R, C2: PRINT "ш"
140 IF R = 21 THEN 150 ELSE R = R + 1: GOTO 130
150 COLOR 1, 15: LOCATE 1, 7: PRINT "╝   C A L C U L A T O R   ╞"
160 LOCATE 1, 54: PRINT "╝ By Navin.K.I ╞": COLOR 7, 2: COLOR 10: I = 15
170 LOCATE 7, 6: PRINT "зддддддд©      зддддддд©      зддддддд©      зддддддд©      зддддддд©"
180 LOCATE 8, 6: PRINT "Ё   1   Ё      Ё   2   Ё      Ё   3   Ё      Ё   "; : COLOR 9: PRINT "+"; : COLOR 10: PRINT "   Ё      Ё   "; : COLOR 9: PRINT "-"; : COLOR 10: PRINT "   Ё"
190 LOCATE 9, 6: PRINT "юддддддды      юддддддды      юддддддды      Ё       Ё      Ё       Ё"
200 LOCATE 10, 51: PRINT "юддддддды      юддддддды"
210 LOCATE 11, 6: PRINT "зддддддд©      зддддддд©      зддддддд©      зддддддд©      зддддддд©"
220 LOCATE 12, 6: PRINT "Ё   4   Ё      Ё   5   Ё      Ё   6   Ё      Ё   "; : COLOR 9: PRINT "X"; : COLOR 10: PRINT "   Ё      Ё   "; : COLOR 9: PRINT "Ж"; : COLOR 10: PRINT "   Ё"; ""
230 LOCATE 13, 6: PRINT "юддддддды      юддддддды      юддддддды      Ё       Ё      Ё       Ё"
240 LOCATE 14, 51: PRINT "юддддддды      юддддддды"
250 LOCATE 15, 6: PRINT "зддддддд©      зддддддд©      зддддддд©      зддддддд©      зддддддд©"
260 LOCATE 16, 6: PRINT "Ё   7   Ё      Ё   8   Ё      Ё   9   Ё      Ё   "; : COLOR 9: PRINT "Ш"; : COLOR 10: PRINT "   Ё      Ё   "; : COLOR 6: PRINT "C"; : COLOR 10: PRINT "   Ё"
270 LOCATE 17, 6: PRINT "юддддддды      юддддддды      юддддддды      Ё       Ё      Ё   "; : COLOR 6: PRINT "E"; : COLOR 10: PRINT "   Ё"
280 LOCATE 18, 51: PRINT "юддддддды      юддддддды"
290 LOCATE 19, 6: PRINT "зддддддд©      зддддддд©      зддддддд©      зддддддд©      зддддддд©"
300 LOCATE 20, 6: PRINT "Ё   0   Ё      Ё   Ы   Ё      Ё   10-  Ё      Ё  "; : COLOR 9: PRINT " ="; : PRINT "   Ё      Ё  "; : COLOR 0: PRINT "OFF"; : COLOR 10: PRINT "  Ё"
310 LOCATE 21, 6: PRINT "юддддддды      юддддддды      юддддддды      юддддддды      юддддддды"
320 NR = 11: R = 11: NC = 21: C = 21: T = 1: A = 0: B = 0: NUM$ = "": NU$ = "": H$ = "": K$ = "": SP = 0
330 COLOR 30: LOCATE R, C: PRINT "иммммммм╩"
340 LOCATE R + 2, C: PRINT "хммммммм╪": COLOR 10
350 ON KEY(1) GOSUB 1490: KEY(1) ON
360 X$ = INKEY$
370 COLOR 7, 2
380 COLOR 15: LOCATE 22, 50: PRINT STRING$(25, "ъ"): COLOR 10
390 IF X$ = CHR$(27) THEN GOTO 940
400 IF X$ = CHR$(0) + CHR$(72) THEN NR = NR - 4: GOTO 490
410 IF X$ = CHR$(0) + CHR$(80) THEN NR = NR + 4: GOTO 490
420 IF X$ = CHR$(0) + CHR$(77) THEN NC = NC + 15: GOTO 490
430 IF X$ = CHR$(0) + CHR$(75) THEN NC = NC - 15: GOTO 490
440 IF X$ = "B" THEN BEE = 1
450 IF X$ = CHR$(13) THEN SP = 0 ELSE 470
460 IF BEE = 1 THEN BEEP: GOTO 730 ELSE 730
470 IF X$ = CHR$(32) THEN 10
480 GOTO 350
490 IF NR < 7 THEN NR = 19
500 IF NR > 19 THEN NR = 7
510 IF NC > 66 THEN NC = 6
520 IF NC < 6 THEN NC = 66
530 IF NR > 6 AND NR < 16 AND NC > 52 THEN 540 ELSE 600
540 COLOR 30: LOCATE NR, NC: PRINT "иммммммм╩"
550 LOCATE NR + 3, NC: PRINT "хммммммм╪"
560 COLOR 10: LOCATE R, C: PRINT "зддддддд©"
570 IF C = 51 OR C = 66 AND R <> 19 THEN LOCATE R + 3, C: PRINT "юддддддды"
580 IF C < 51 OR R = 19 THEN LOCATE R + 2, C: PRINT "юддддддды"
590 R = NR: C = NC: GOTO 350
600 IF NR > 6 AND NR < 16 AND NC > 50 THEN 610 ELSE 670
610 COLOR 10: LOCATE R, C: PRINT "зддддддд©"
620 IF C = 51 OR C = 66 AND R <> 19 THEN LOCATE R + 3, C: PRINT "юддддддды"
630 IF C < 51 OR R = 19 THEN LOCATE R + 2, C: PRINT "юддддддды"
640 COLOR 30: LOCATE NR, NC: PRINT "иммммммм╩"
650 LOCATE NR + 3, NC: PRINT "хммммммм╪"
660 R = NR: C = NC: GOTO 350
670 COLOR 30: LOCATE NR, NC: PRINT "иммммммм╩"
680 LOCATE NR + 2, NC: PRINT "хммммммм╪"
690 COLOR 10: LOCATE R, C: PRINT "зддддддд©"
700 IF (C = 51 AND R <> 19) OR C = 66 THEN LOCATE R + 3, C: PRINT "юддддддды"
710 IF C < 51 OR R = 19 THEN LOCATE R + 2, C: PRINT "юддддддды"
720 R = NR: C = NC: GOTO 350
730 IF R = 7 AND C = 6 THEN N$ = "1"
740 IF R = 7 AND C = 21 THEN N$ = "2"
750 IF R = 7 AND C = 36 THEN N$ = "3"
760 IF R = 7 AND C = 51 THEN N$ = "+": SP = 1
770 IF R = 7 AND C = 66 THEN N$ = "-": SP = 1
780 IF R = 11 AND C = 6 THEN N$ = "4"
790 IF R = 11 AND C = 21 THEN N$ = "5"
800 IF R = 11 AND C = 36 THEN N$ = "6"
810 IF R = 11 AND C = 51 THEN N$ = "*": SP = 1
820 IF R = 11 AND C = 66 THEN N$ = "/": SP = 1
830 IF R = 15 AND C = 6 THEN N$ = "7"
840 IF R = 15 AND C = 21 THEN N$ = "8"
850 IF R = 15 AND C = 36 THEN N$ = "9"
860 IF R = 15 AND C = 51 THEN N$ = "Ш": SP = 1
870 IF R = 15 AND C = 66 THEN CLEAR : GOTO 10
880 IF R = 19 AND C = 6 THEN N$ = "0"
890 IF R = 19 AND C = 21 THEN N$ = "."
900 IF R = 19 AND C = 36 THEN N$ = "10"
910 IF R = 19 AND C = 51 THEN N$ = "=": SP = 1
920 IF R = 19 AND C = 66 THEN GOTO 940
930 GOTO 1040
940 '--END
950 R = 3: C1 = 5: COLOR 5
960 LOCATE R, C1: PRINT STRING$(71, "ш")
970 IF R = 5 THEN LOCATE R, 22: PRINT " C A L C U L A T O R   C L O S E D "
980 IF R = 7 THEN LOCATE R, 31: PRINT " G O O D B Y E !!! "
990 TI = TIMER + .1: WHILE TI > TIMER: WEND
1000 FOR I = 1000 TO 1001: SOUND I, .5: NEXT I
1010 IF R = 21 THEN 1020 ELSE R = R + 1: GOTO 960
1020 TI = TIMER + 1: WHILE TI > TIMER: WEND
1030 SYSTEM
1040 IF SP = 1 THEN 1050 ELSE 1080
1050 COLOR 1, 8: LOCATE 4, 15: PRINT STRING$(30, " ")
1060 IF T = 1 THEN T = 2
1070 IF T = 3 THEN T = 4
1080 IF T = 1 THEN 1090 ELSE 1120
1090 NU$ = NU$ + N$: IF LEN(NU$) > 15 THEN BEEP: GOTO 350
1100 ALE$ = NU$: A = VAL(NU$): COLOR 1, 8: COLOR 10
1110 LOCATE 4, 15: PRINT NU$: GOTO 350
1120 IF T = 2 THEN 1130 ELSE 1160
1130 T = 3: H$ = N$
1140 IF H$ = "Ш" THEN A = SQR(A): GOTO 1300
1150 IF H$ = "10" THEN NU$ = LEFT$(NU$, LEN(NU$) - 1): GOTO 1100 ELSE 350
1160 IF T = 3 THEN 1170 ELSE 1200
1170 NUM$ = NUM$ + N$: IF LEN(NUM$) > 15 THEN BEEP: GOTO 350
1180 B = VAL(NUM$): COLOR 1, 8: COLOR 10
1190 LOCATE 4, 15: PRINT NUM$: GOTO 350
1200 IF T = 4 THEN 1210 ELSE 350
1210 K$ = N$
1220 IF H$ = "+" THEN A = A + B: GOTO 1270
1230 IF H$ = "-" THEN A = A - B: GOTO 1270
1240 IF H$ = "*" THEN A = A * B: GOTO 1270
1250 IF H$ = "/" THEN A = A / B: GOTO 1270
1260 IF H$ = "10" THEN NUM$ = LEFT$(NUM$, LEN(NUM$) - 1): GOTO 1180 ELSE 350
1270 IF K$ = "Ш" THEN A = SQR(A): GOTO 1300
1280 NU$ = STR$(A): T = 3: BUM$ = NUM$: NUM$ = ""
1290 IF K$ = "=" THEN 1300 ELSE 1480
1300 COLOR 1, 8: LOCATE 4, 15: PRINT STRING$(30, " "): COLOR 10
1310 AN$ = RIGHT$(STR$(A), LEN(STR$(A)) - 1)
1320 FOR I = 1 TO LEN(AN$)
1330 IF MID$(AN$, I, 1) = "+" THEN 1350
1340 NEXT I: ANS$ = AN$: GOTO 1450
1350 A$ = RIGHT$(AN$, LEN(AN$) - I): FOR J = 1 TO VAL(A$): AD$ = AD$ + "0": NEXT J
1360 AN$ = MID$(AN$, 1, I - 2)
1370 FOR I = 1 TO LEN(AN$)
1380 IF MID$(AN$, I, 1) = "." THEN 1400
1390 NEXT I: GOTO 1440
1400 AD$ = LEFT$(AD$, LEN(AD$) - (I - 1))
1410 FOR I = 1 TO LEN(AN$)
1420 IF MID$(AN$, I, 1) = "." THEN 1430 ELSE ADD$ = ADD$ + MID$(AN$, I, 1)
1430 NEXT I
1440 ANS$ = ADD$ + AD$: COLOR 10
1450 LOCATE 5, 12: PRINT "You Pressed : "; ALE$; " "; H$; " "; BUM$; " "; K$
1460 LOCATE 4, 12: PRINT "Answer = "; ANS$
1470 X$ = INPUT$(1): ADD$ = "": AD$ = "": ANS$ = "": AN$ = "": A$ = "": AD$ = "": ALE$ = "": GOTO 10
1480 H$ = K$: GOTO 350
1490 '---help
1500 COLOR 15, 1
1510 LOCATE 2, 33: PRINT "Ч [ H E L P ] Ч"
1520 LOCATE 3, 5: PRINT STRING$(71, " ")
1530 LOCATE 4, 5: PRINT "  This calculator is different from others because of its easy to use  "
1540 LOCATE 5, 5: PRINT "  controls, its square root facility & the backspace key.              "
1550 LOCATE 6, 5: PRINT "       The calculator allows you to enter large numbers, to facilitate "
1560 LOCATE 7, 5: PRINT " division & square root finding for large numbers.If you try to add or "
1570 LOCATE 8, 5: PRINT " multiply 2 large numbers,you will end up getting an inaccurate answer "
1580 LOCATE 9, 5: PRINT "       Example : If you type  ` 34267673 + 3648726 = ' ,The answer you "
1590 LOCATE 10, 5: PRINT " will get will be 379164000000.The answer got is accurate only upto 7  "
1600 LOCATE 11, 5: PRINT " digits.Any other calculator would have shown the answer as 3.79164E+07"
1610 LOCATE 13, 5: PRINT " Here are some special keys you can use...                             "
1620 LOCATE 14, 5: PRINT STRING$(51, "д") + STRING$(20, " "): LOCATE 12, 5: PRINT STRING$(71, " ")
1630 LOCATE 15, 5: PRINT " A - To see the answer as another      Esc - To exit in a similar way  "
1640 LOCATE 16, 5: PRINT "  calculator would have shown it.         as OFF.                      "
1650 LOCATE 17, 5: PRINT " Spacebar - Same function as the       B - To hear a beep on pressing  "
1660 LOCATE 18, 5: PRINT "         CE key.                         a key in the calculator.      "
1670 LOCATE 19, 5: PRINT STRING$(71, " ")
1680 LOCATE 20, 5: PRINT "     [ This calculator is exclusively programmed by Navin.K.Ipe ]      "
1690 LOCATE 21, 5: PRINT STRING$(71, " ")
1700 X$ = INPUT$(1)
1710 IF X$ = CHR$(32) THEN GOTO 1490 ELSE 10
