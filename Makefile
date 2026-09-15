# Makefile for SDFS

COMPONENT   = SDFS
ASMHDRS     = SDFS SDFSErr
ASMCHDRS    = SDFS SDFSErr
HDRS        =
CMHGAUTOHDR = SDFS
CMHGFILE    = SDFSHdr
CMHGDEPENDS = command module
OBJS        = cardreg command discop free freeveneer globals message miscop module sdio service swi
LIBS        = ${SYNCLIB} ${ASMUTILS}
ifeq (${TOOLCHAIN},GNU)
ROM_OBJS    = ${OBJS} ${RES_OBJ}
endif
ROMCDEFINES = -DROM_MODULE
ASM2TXT     = SDFSErr hdr
CDFLAGS    += -DDEBUG_ENABLED

#OBJS       += gpiodebug
#CFLAGS     += -DGPIODEBUG

include CModule

# Dynamic dependencies:
