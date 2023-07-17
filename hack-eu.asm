.gba
.open "hack-eu.gba", 0x08000000

.org 0x0806b30a
.thumb
        ldrb    r3, [r1]
        strb    r3, [r4]
        strb    r3, [r5]
        b       0x0806b338

; change border color from teal to black
.org 0x084b0c5c
        .dh     0
.org 0x084b11f0
        .dh     0
.org 0x084b1784
        .dh     0
.org 0x084b1d18
        .dh     0
.org 0x084b22ac
        .dh     0
.org 0x084b2840
        .dh     0
.org 0x084f34cc
        .dh     0

.close
