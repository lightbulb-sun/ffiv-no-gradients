.gba
.open "hack.gba", 0x08000000

.org 0x0806939a
.thumb
        ldrb    r3, [r1]
        strb    r3, [r4]
        strb    r3, [r5]
        b       0x080693c8

.close
