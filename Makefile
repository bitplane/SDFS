# Makefile for SDFS

COMPONENT   = SDFS
ASMHDRS     = SDFS SDFSErr
ASMCHDRS    = SDFS SDFSErr
HDRS        =
CMHGFILE    = SDFSHdr
CMHGDEPENDS = command module
OBJS        = cardreg command discop free freeveneer globals message miscop module sdio service swi
LIBS        = ${SYNCLIB} ${ASMUTILS}
ROMCDEFINES = -DROM_MODULE
ASM2TXT     = SDFSErr hdr
CDFLAGS    += -DDEBUG_ENABLED

#OBJS       += gpiodebug
#CFLAGS     += -DGPIODEBUG

include CModule

# Dynamic dependencies:
