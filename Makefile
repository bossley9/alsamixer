BINARY=alsamixer
MANUAL=$(BINARY).1

PREFIX=/usr/local
BIN=$(PREFIX)/bin
MAN=$(PREFIX)/share/man/man1

CFLAGS = -O2 -Wall -pipe -g

am_alsamixer_OBJECTS = alsamixer-card_select.o \
	alsamixer-bindings.o alsamixer-cli.o \
	alsamixer-colors.o alsamixer-curskey.o \
	alsamixer-configparser.o \
	alsamixer-device_name.o alsamixer-die.o \
	alsamixer-mainloop.o alsamixer-mem.o \
	alsamixer-menu_widget.o \
	alsamixer-mixer_clickable.o \
	alsamixer-mixer_controls.o \
	alsamixer-mixer_display.o \
	alsamixer-mixer_widget.o \
	alsamixer-proc_files.o alsamixer-textbox.o \
	alsamixer-utils.o alsamixer-volume_mapping.o \
	alsamixer-widget.o
DEFAULT_INCLUDES = -I.
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(AM_CFLAGS) $(CFLAGS)
LINK = $(CC) $(AM_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o $@
DEFS = -DHAVE_CONFIG_H
LIBS = -lasound -lm -ldl -lpthread
AM_CFLAGS = -D_GNU_SOURCE -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600  -DCURSESINC="<ncurses.h>"
LDADD = -lformw -lmenuw -lpanelw -Wl,-O1,--sort-common,--as-needed,-z,relro,-z,now -lncursesw 

$(BINARY): $(am_alsamixer_OBJECTS)
	$(LINK) $(am_alsamixer_OBJECTS) $(LDADD) $(LIBS)

alsamixer-card_select.o:
	$(COMPILE) -c -o alsamixer-card_select.o card_select.c

alsamixer-bindings.o:
	$(COMPILE) -c -o alsamixer-bindings.o bindings.c

alsamixer-cli.o:
	$(COMPILE) -c -o alsamixer-cli.o cli.c

alsamixer-colors.o:
	$(COMPILE) -c -o alsamixer-colors.o colors.c

alsamixer-curskey.o:
	$(COMPILE) -c -o alsamixer-curskey.o curskey.c

alsamixer-configparser.o:
	$(COMPILE) -c -o alsamixer-configparser.o configparser.c

alsamixer-device_name.o:
	$(COMPILE) -c -o alsamixer-device_name.o device_name.c

alsamixer-die.o:
	$(COMPILE) -c -o alsamixer-die.o die.c

alsamixer-mainloop.o:
	$(COMPILE) -c -o alsamixer-mainloop.o mainloop.c

alsamixer-mem.o:
	$(COMPILE) -c -o alsamixer-mem.o mem.c

alsamixer-menu_widget.o:
	$(COMPILE) -c -o alsamixer-menu_widget.o menu_widget.c

alsamixer-mixer_clickable.o:
	$(COMPILE) -c -o alsamixer-mixer_clickable.o mixer_clickable.c

alsamixer-mixer_controls.o:
	$(COMPILE) -c -o alsamixer-mixer_controls.o mixer_controls.c

alsamixer-mixer_display.o:
	$(COMPILE) -c -o alsamixer-mixer_display.o mixer_display.c

alsamixer-mixer_widget.o:
	$(COMPILE) -c -o alsamixer-mixer_widget.o mixer_widget.c

alsamixer-proc_files.o:
	$(COMPILE) -c -o alsamixer-proc_files.o proc_files.c

alsamixer-textbox.o:
	$(COMPILE) -c -o alsamixer-textbox.o textbox.c

alsamixer-utils.o:
	$(COMPILE) -c -o alsamixer-utils.o utils.c

alsamixer-volume_mapping.o:
	$(COMPILE) -c -o alsamixer-volume_mapping.o volume_mapping.c

alsamixer-widget.o:
	$(COMPILE) -c -o alsamixer-widget.o widget.c

install: $(BINARY)
	mkdir -p $(BIN)
	cp -f $(BINARY) $(BIN)/$(BINARY)
	mkdir -p $(MAN)
	cp -f $(MANUAL) $(MAN)/$(MANUAL)

clean:
	rm -rf *.o
	rm -rf *.obj
	rm -rf *.d
	rm -rf $(BINARY)

uninstall: clean
	rm -rf $(BIN)/$(BINARY)
	rm -rf $(MAN)/$(MANUAL)

.PHONY: install clean uninstall $(BINARY)
