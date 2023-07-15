ASM = hack.asm
ROM = ffiv.gba
HACK = hack.gba

all:
	cp $(ROM) $(HACK)
	armips $(ASM)
