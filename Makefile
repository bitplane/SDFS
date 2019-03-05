# Makefile for SDFS

COMPONENT   = SDFS
ASMHDRS     = SDFS SDFSErr
ASMCHDRS    = SDFS SDFSErr
HDRS        =
CMHGFILE    = SDFSHdr
CMHGDEPENDS = command module
OBJS        = base cardreg command discop free freeveneer globals message miscop module sdio service swi
LIBS        = ${SYNCLIB}
ROMCDEFINES = -DROM_MODULE

#CFLAGS     += -DDEBUG_ENABLED

#OBJS       += gpiodebug
#CFLAGS     += -DGPIODEBUG

ASM2TXT     = SDFSErr hdr

include CModule

# Dynamic dependencies:
