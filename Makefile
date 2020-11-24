BINARY=alsamixer
MANUAL=$(BINARY).1

PREFIX=/usr/local
BIN=$(PREFIX)/bin
MAN=$(PREFIX)/share/man/man1

CFLAGS = -O2 -Wall -pipe -g
LIBS = -lasound -lm -ldl -lpthread
AM_CFLAGS = -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600  -DCURSESINC="<ncurses.h>"
LDADD = -lformw -lmenuw -lpanelw -Wl,-O1,--sort-common,--as-needed,-z,relro,-z,now -lncursesw

RM=rm -f
MKDIR_P=mkdir -p
CP=cp -f

OBJ = \
	card_select.o \
	bindings.o cli.o \
	colors.o curskey.o \
	configparser.o \
	device_name.o die.o \
	mainloop.o mem.o \
	menu_widget.o \
	mixer_clickable.o \
	mixer_controls.o \
	mixer_display.o \
	mixer_widget.o \
	proc_files.o textbox.o \
	utils.o volume_mapping.o \
	widget.o

COMPILE = $(CC) $(AM_CFLAGS) $(CFLAGS)
LINK = $(CC) $(AM_CFLAGS) $(CFLAGS) $(LDFLAGS) -o $@

$(OBJ):
	$(COMPILE) -c -o $*.o $*.c

$(BINARY): $(OBJ)
	$(LINK) $(OBJ) $(LDADD) $(LIBS)

all: $(BINARY)

install: all
	$(MKDIR_P) $(BIN)
	$(CP) $(BINARY) $(BIN)/$(BINARY)
	$(MKDIR_P) $(MAN)
	$(CP) $(MANUAL) $(MAN)/$(MANUAL)

clean:
	$(RM) *.o
	$(RM) $(BINARY)

uninstall: clean
	$(RM) $(BIN)/$(BINARY)
	$(RM) $(MAN)/$(MANUAL)

.PHONY: all install clean uninstall $(BINARY) $(OBJ)
