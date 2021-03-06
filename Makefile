#variables de compilation
SHELL := /bin/sh
CC    := gcc
CFLAGS +=-O3 -flto -Wall -ffast-math -std=gnu90
TARGET   := analyze-x86
#variable de nettoyage
RM_F := rm -f
#variables d’installation
INSTALL := install
INSTALL_DIR     := $(INSTALL) -p -d -o root -g root  -m  755
INSTALL_PROGRAM := $(INSTALL) -p    -o root -g root  -m  755

prefix          := /usr
exec_prefix     := $(prefix)
bindir          := $(prefix)/bin

export

all:
	$(CC) $(CFLAGS) -Iinclude -o $(TARGET) analyze-x86.c

clean:
	-@$(RM_F) $(TARGET)

install: $(TARGET)
	$(INSTALL_DIR) $(DESTDIR)$(bindir)
	-@$(RM_F) $(DESTDIR)$(bindir)/$(TARGET)
	$(INSTALL_PROGRAM) $(TARGET) $(DESTDIR)$(bindir)
