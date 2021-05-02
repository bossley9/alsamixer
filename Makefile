BINARY=alsamixer
MANUAL=$(BINARY).1

PREFIX=/usr/local
BIN=$(PREFIX)/bin
MAN=$(PREFIX)/share/man/man1

CFLAGS = -O2 -Wall -pipe -g
LIBS = -lasound -lm -ldl -lpthread
AM_CFLAGS = -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600  -DCURSESINC="<ncurses.h>"
LDADD = -lformw -lmenuw -lpanelw -Wl,-O1,--sort-common,--as-needed,-z,relro,-z,now -lncursesw

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

all: $(BINARY)
	$(COMPILE) -c -o $*.o $*.c
	$(LINK) $(OBJ) $(LDADD) $(LIBS)

install:
	@mkdir -p $(BIN)
	@mv $(BINARY) $(BIN)/$(BINARY)
	@mkdir -p $(MAN)
	@mv $(MANUAL) $(MAN)/$(MANUAL)

clean:
	@rm -f *.o
	@rm -f $(BINARY)

uninstall: clean
	@rm -f $(BIN)/$(BINARY)
	@rm -f $(MAN)/$(MANUAL)

.PHONY: all install clean uninstall $(BINARY) $(OBJ)
