.gba
.open "hack-us.gba", 0x08000000

.org 0x0806939a
.thumb
        ldrb    r3, [r1]
        strb    r3, [r4]
        strb    r3, [r5]
        b       0x080693c8

; change border color from teal to black
.org 0x08390e34
        .dh     0
.org 0x083913c8
        .dh     0
.org 0x0839195c
        .dh     0
.org 0x08391ef0
        .dh     0
.org 0x08392484
        .dh     0
.org 0x08392a18
        .dh     0
.org 0x083da304
        .dh     0

.close
