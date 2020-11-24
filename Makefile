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

*.o:
	$(COMPILE) -c -o $*.o $*.c

$(BINARY): $(OBJ)
	$(LINK) $(OBJ) $(LDADD) $(LIBS)

all: $(BINARY)

install: all
	mkdir -p $(BIN)
	cp -f $(BINARY) $(BIN)/$(BINARY)
	mkdir -p $(MAN)
	cp -f $(MANUAL) $(MAN)/$(MANUAL)

clean:
	rm -rf *.o
	rm -rf $(BINARY)

uninstall: clean
	rm -rf $(BIN)/$(BINARY)
	rm -rf $(MAN)/$(MANUAL)

.PHONY: install clean uninstall $(BINARY) $(OBJ) $(SRC)
