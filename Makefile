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
alsamixer_OBJECTS = $(am_alsamixer_OBJECTS)
DEFAULT_INCLUDES = -I.
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(AM_CFLAGS) $(CFLAGS)
LINK = $(CC) $(AM_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o $@
DEFS = -DHAVE_CONFIG_H
LIBS = -lasound -lm -ldl -lpthread
AM_CFLAGS = -D_GNU_SOURCE -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600  -DCURSESINC="<ncurses.h>"
LDADD = -lformw -lmenuw -lpanelw -Wl,-O1,--sort-common,--as-needed,-z,relro,-z,now -lncursesw 

$(BINARY): $(alsamixer_OBJECTS)
	$(LINK) $(alsamixer_OBJECTS) $(LDADD) $(LIBS)

alsamixer-card_select.o: card_select.c
	$(COMPILE) -MT alsamixer-card_select.o -MD -MP -c -o alsamixer-card_select.o card_select.c

alsamixer-bindings.o: bindings.c
	$(COMPILE) -MT alsamixer-bindings.o -MD -MP -c -o alsamixer-bindings.o bindings.c

alsamixer-cli.o: cli.c
	$(COMPILE) -MT alsamixer-cli.o -MD -MP -c -o alsamixer-cli.o cli.c

alsamixer-colors.o: colors.c
	$(COMPILE) -MT alsamixer-colors.o -MD -MP -c -o alsamixer-colors.o colors.c

alsamixer-curskey.o: curskey.c
	$(COMPILE) -MT alsamixer-curskey.o -MD -MP -c -o alsamixer-curskey.o curskey.c

alsamixer-configparser.o: configparser.c
	$(COMPILE) -MT alsamixer-configparser.o -MD -MP -c -o alsamixer-configparser.o configparser.c

alsamixer-device_name.o: device_name.c
	$(COMPILE) -MT alsamixer-device_name.o -MD -MP -c -o alsamixer-device_name.o device_name.c

alsamixer-die.o: die.c
	$(COMPILE) -MT alsamixer-die.o -MD -MP -c -o alsamixer-die.o die.c

alsamixer-mainloop.o: mainloop.c
	$(COMPILE) -MT alsamixer-mainloop.o -MD -MP -c -o alsamixer-mainloop.o mainloop.c

alsamixer-mem.o: mem.c
	$(COMPILE) -MT alsamixer-mem.o -MD -MP -c -o alsamixer-mem.o mem.c

alsamixer-menu_widget.o: menu_widget.c
	$(COMPILE) -MT alsamixer-menu_widget.o -MD -MP -c -o alsamixer-menu_widget.o menu_widget.c

alsamixer-mixer_clickable.o: mixer_clickable.c
	$(COMPILE) -MT alsamixer-mixer_clickable.o -MD -MP -c -o alsamixer-mixer_clickable.o mixer_clickable.c

alsamixer-mixer_controls.o: mixer_controls.c
	$(COMPILE) -MT alsamixer-mixer_controls.o -MD -MP -c -o alsamixer-mixer_controls.o mixer_controls.c

alsamixer-mixer_display.o: mixer_display.c
	$(COMPILE) -MT alsamixer-mixer_display.o -MD -MP -c -o alsamixer-mixer_display.o mixer_display.c

alsamixer-mixer_widget.o: mixer_widget.c
	$(COMPILE) -MT alsamixer-mixer_widget.o -MD -MP -c -o alsamixer-mixer_widget.o mixer_widget.c

alsamixer-proc_files.o: proc_files.c
	$(COMPILE) -MT alsamixer-proc_files.o -MD -MP -c -o alsamixer-proc_files.o proc_files.c

alsamixer-textbox.o: textbox.c
	$(COMPILE) -MT alsamixer-textbox.o -MD -MP -c -o alsamixer-textbox.o textbox.c

alsamixer-utils.o: utils.c
	$(COMPILE) -MT alsamixer-utils.o -MD -MP -c -o alsamixer-utils.o utils.c

alsamixer-volume_mapping.o: volume_mapping.c
	$(COMPILE) -MT alsamixer-volume_mapping.o -MD -MP -c -o alsamixer-volume_mapping.o volume_mapping.c

alsamixer-widget.o: widget.c
	$(COMPILE) -MT alsamixer-widget.o -MD -MP -c -o alsamixer-widget.o widget.c

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
