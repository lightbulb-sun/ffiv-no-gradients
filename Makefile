ASM_US = hack-us.asm
ROM_US = ffiv-us.gba
HACK_US = hack-us.gba

ASM_EU = hack-eu.asm
ROM_EU = ffiv-eu.gba
HACK_EU = hack-eu.gba

TARGETS = $(HACK_US) $(HACK_EU)

all: us eu

us: $(HACK_US)
eu: $(HACK_EU)

$(HACK_US): $(ASM_US)
	cp $(ROM_US) $(HACK_US)
	armips $(ASM_US)

$(HACK_EU): $(ASM_EU)
	cp $(ROM_EU) $(HACK_EU)
	armips $(ASM_EU)

clean:
	rm -rf $(TARGETS)
