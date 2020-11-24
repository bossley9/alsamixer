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

$(BINARY): $(OBJ)
	$(LINK) $(OBJ) $(LDADD) $(LIBS)

card_select.o:
	$(COMPILE) -c -o card_select.o card_select.c
bindings.o:
	$(COMPILE) -c -o bindings.o bindings.c
cli.o:
	$(COMPILE) -c -o cli.o cli.c
colors.o:
	$(COMPILE) -c -o colors.o colors.c
curskey.o:
	$(COMPILE) -c -o curskey.o curskey.c
configparser.o:
	$(COMPILE) -c -o configparser.o configparser.c
device_name.o:
	$(COMPILE) -c -o device_name.o device_name.c
die.o:
	$(COMPILE) -c -o die.o die.c
mainloop.o:
	$(COMPILE) -c -o mainloop.o mainloop.c
mem.o:
	$(COMPILE) -c -o mem.o mem.c
menu_widget.o:
	$(COMPILE) -c -o menu_widget.o menu_widget.c
mixer_clickable.o:
	$(COMPILE) -c -o mixer_clickable.o mixer_clickable.c
mixer_controls.o:
	$(COMPILE) -c -o mixer_controls.o mixer_controls.c
mixer_display.o:
	$(COMPILE) -c -o mixer_display.o mixer_display.c
mixer_widget.o:
	$(COMPILE) -c -o mixer_widget.o mixer_widget.c
proc_files.o:
	$(COMPILE) -c -o proc_files.o proc_files.c
textbox.o:
	$(COMPILE) -c -o textbox.o textbox.c
utils.o:
	$(COMPILE) -c -o utils.o utils.c
volume_mapping.o:
	$(COMPILE) -c -o volume_mapping.o volume_mapping.c
widget.o:
	$(COMPILE) -c -o widget.o widget.c

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

.PHONY: install clean uninstall $(BINARY) $(OBJ)
