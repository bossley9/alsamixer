BINARY=alsamixer
MANUAL=$(BINARY).1

PREFIX=/usr/local
BIN=$(PREFIX)/bin
MAN=$(PREFIX)/share/man/man1

CFLAGS = -O2 -Wall -pipe -g
LDFLAGS=

transform = $(program_transform_name)
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
alsamixer_LDADD = $(LDADD)
DEFAULT_INCLUDES = -I.
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(AM_CFLAGS) $(CFLAGS)
LINK = $(CC) $(AM_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o $@
SOURCES = $(alsamixer_SOURCES)
CURSESINC = <ncurses.h>
CURSESLIB = -lformw -lmenuw -lpanelw -Wl,-O1,--sort-common,--as-needed,-z,relro,-z,now -lncursesw 
CURSES_CFLAGS = -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 
DEFS = -DHAVE_CONFIG_H
LIBS = -lasound -lm -ldl -lpthread
program_transform_name = s,x,x,
AM_CFLAGS = -D_GNU_SOURCE -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600  -DCURSESINC="<ncurses.h>"
LDADD = -lformw -lmenuw -lpanelw -Wl,-O1,--sort-common,--as-needed,-z,relro,-z,now -lncursesw 
alsamixer_SOURCES = card_select.c card_select.h \
		bindings.c bindings.h \
		cli.c \
		colors.c colors.h \
		curskey.c curskey.h \
		configparser.c configparser.h \
		device_name.c device_name.h \
		die.c die.h \
		mainloop.c mainloop.h \
		mem.c mem.h \
		menu_widget.c menu_widget.h \
		mixer_clickable.c mixer_clickable.h \
		mixer_controls.c mixer_controls.h \
		mixer_display.c mixer_display.h \
		mixer_widget.c mixer_widget.h \
		proc_files.c proc_files.h \
		textbox.c textbox.h \
		utils.c utils.h \
		volume_mapping.c volume_mapping.h \
		widget.c widget.h

$(BINARY): $(alsamixer_OBJECTS)
	$(LINK) $(alsamixer_OBJECTS) $(alsamixer_LDADD) $(LIBS)

alsamixer-card_select.o: card_select.c
	$(COMPILE) -MT alsamixer-card_select.o -MD -MP -c -o alsamixer-card_select.o `test -f 'card_select.c' || echo './'`card_select.c

alsamixer-card_select.obj: card_select.c
	$(COMPILE) -MT alsamixer-card_select.obj -MD -MP -c -o alsamixer-card_select.obj `if test -f 'card_select.c'; then echo 'card_select.c'; else echo './card_select.c'; fi`

alsamixer-bindings.o: bindings.c
	$(COMPILE) -MT alsamixer-bindings.o -MD -MP -c -o alsamixer-bindings.o `test -f 'bindings.c' || echo './'`bindings.c

alsamixer-bindings.obj: bindings.c
	$(COMPILE) -MT alsamixer-bindings.obj -MD -MP -c -o alsamixer-bindings.obj `if test -f 'bindings.c'; then echo 'bindings.c'; else echo './bindings.c'; fi`

alsamixer-cli.o: cli.c
	$(COMPILE) -MT alsamixer-cli.o -MD -MP -c -o alsamixer-cli.o `test -f 'cli.c' || echo './'`cli.c

alsamixer-cli.obj: cli.c
	$(COMPILE) -MT alsamixer-cli.obj -MD -MP -c -o alsamixer-cli.obj `if test -f 'cli.c'; then echo 'cli.c'; else echo './cli.c'; fi`

alsamixer-colors.o: colors.c
	$(COMPILE) -MT alsamixer-colors.o -MD -MP -c -o alsamixer-colors.o `test -f 'colors.c' || echo './'`colors.c

alsamixer-colors.obj: colors.c
	$(COMPILE) -MT alsamixer-colors.obj -MD -MP -c -o alsamixer-colors.obj `if test -f 'colors.c'; then echo 'colors.c'; else echo './colors.c'; fi`

alsamixer-curskey.o: curskey.c
	$(COMPILE) -MT alsamixer-curskey.o -MD -MP -c -o alsamixer-curskey.o `test -f 'curskey.c' || echo './'`curskey.c

alsamixer-curskey.obj: curskey.c
	$(COMPILE) -MT alsamixer-curskey.obj -MD -MP -c -o alsamixer-curskey.obj `if test -f 'curskey.c'; then echo 'curskey.c'; else echo './curskey.c'; fi`

alsamixer-configparser.o: configparser.c
	$(COMPILE) -MT alsamixer-configparser.o -MD -MP -c -o alsamixer-configparser.o `test -f 'configparser.c' || echo './'`configparser.c

alsamixer-configparser.obj: configparser.c
	$(COMPILE) -MT alsamixer-configparser.obj -MD -MP -c -o alsamixer-configparser.obj `if test -f 'configparser.c'; then echo 'configparser.c'; else echo './configparser.c'; fi`

alsamixer-device_name.o: device_name.c
	$(COMPILE) -MT alsamixer-device_name.o -MD -MP -c -o alsamixer-device_name.o `test -f 'device_name.c' || echo './'`device_name.c

alsamixer-device_name.obj: device_name.c
	$(COMPILE) -MT alsamixer-device_name.obj -MD -MP -c -o alsamixer-device_name.obj `if test -f 'device_name.c'; then echo 'device_name.c'; else echo './device_name.c'; fi`

alsamixer-die.o: die.c
	$(COMPILE) -MT alsamixer-die.o -MD -MP -c -o alsamixer-die.o `test -f 'die.c' || echo './'`die.c

alsamixer-die.obj: die.c
	$(COMPILE) -MT alsamixer-die.obj -MD -MP -c -o alsamixer-die.obj `if test -f 'die.c'; then echo 'die.c'; else echo './die.c'; fi`

alsamixer-mainloop.o: mainloop.c
	$(COMPILE) -MT alsamixer-mainloop.o -MD -MP -c -o alsamixer-mainloop.o `test -f 'mainloop.c' || echo './'`mainloop.c

alsamixer-mainloop.obj: mainloop.c
	$(COMPILE) -MT alsamixer-mainloop.obj -MD -MP -c -o alsamixer-mainloop.obj `if test -f 'mainloop.c'; then echo 'mainloop.c'; else echo './mainloop.c'; fi`

alsamixer-mem.o: mem.c
	$(COMPILE) -MT alsamixer-mem.o -MD -MP -c -o alsamixer-mem.o `test -f 'mem.c' || echo './'`mem.c

alsamixer-mem.obj: mem.c
	$(COMPILE) -MT alsamixer-mem.obj -MD -MP -c -o alsamixer-mem.obj `if test -f 'mem.c'; then echo 'mem.c'; else echo './mem.c'; fi`

alsamixer-menu_widget.o: menu_widget.c
	$(COMPILE) -MT alsamixer-menu_widget.o -MD -MP -c -o alsamixer-menu_widget.o `test -f 'menu_widget.c' || echo './'`menu_widget.c

alsamixer-menu_widget.obj: menu_widget.c
	$(COMPILE) -MT alsamixer-menu_widget.obj -MD -MP -c -o alsamixer-menu_widget.obj `if test -f 'menu_widget.c'; then echo 'menu_widget.c'; else echo './menu_widget.c'; fi`

alsamixer-mixer_clickable.o: mixer_clickable.c
	$(COMPILE) -MT alsamixer-mixer_clickable.o -MD -MP -c -o alsamixer-mixer_clickable.o `test -f 'mixer_clickable.c' || echo './'`mixer_clickable.c

alsamixer-mixer_clickable.obj: mixer_clickable.c
	$(COMPILE) -MT alsamixer-mixer_clickable.obj -MD -MP -c -o alsamixer-mixer_clickable.obj `if test -f 'mixer_clickable.c'; then echo 'mixer_clickable.c'; else echo './mixer_clickable.c'; fi`

alsamixer-mixer_controls.o: mixer_controls.c
	$(COMPILE) -MT alsamixer-mixer_controls.o -MD -MP -c -o alsamixer-mixer_controls.o `test -f 'mixer_controls.c' || echo './'`mixer_controls.c

alsamixer-mixer_controls.obj: mixer_controls.c
	$(COMPILE) -MT alsamixer-mixer_controls.obj -MD -MP -c -o alsamixer-mixer_controls.obj `if test -f 'mixer_controls.c'; then echo 'mixer_controls.c'; else echo './mixer_controls.c'; fi`

alsamixer-mixer_display.o: mixer_display.c
	$(COMPILE) -MT alsamixer-mixer_display.o -MD -MP -c -o alsamixer-mixer_display.o `test -f 'mixer_display.c' || echo './'`mixer_display.c

alsamixer-mixer_display.obj: mixer_display.c
	$(COMPILE) -MT alsamixer-mixer_display.obj -MD -MP -c -o alsamixer-mixer_display.obj `if test -f 'mixer_display.c'; then echo 'mixer_display.c'; else echo './mixer_display.c'; fi`

alsamixer-mixer_widget.o: mixer_widget.c
	$(COMPILE) -MT alsamixer-mixer_widget.o -MD -MP -c -o alsamixer-mixer_widget.o `test -f 'mixer_widget.c' || echo './'`mixer_widget.c

alsamixer-mixer_widget.obj: mixer_widget.c
	$(COMPILE) -MT alsamixer-mixer_widget.obj -MD -MP -c -o alsamixer-mixer_widget.obj `if test -f 'mixer_widget.c'; then echo 'mixer_widget.c'; else echo './mixer_widget.c'; fi`

alsamixer-proc_files.o: proc_files.c
	$(COMPILE) -MT alsamixer-proc_files.o -MD -MP -c -o alsamixer-proc_files.o `test -f 'proc_files.c' || echo './'`proc_files.c

alsamixer-proc_files.obj: proc_files.c
	$(COMPILE) -MT alsamixer-proc_files.obj -MD -MP -c -o alsamixer-proc_files.obj `if test -f 'proc_files.c'; then echo 'proc_files.c'; else echo './proc_files.c'; fi`

alsamixer-textbox.o: textbox.c
	$(COMPILE) -MT alsamixer-textbox.o -MD -MP -c -o alsamixer-textbox.o `test -f 'textbox.c' || echo './'`textbox.c

alsamixer-textbox.obj: textbox.c
	$(COMPILE) -MT alsamixer-textbox.obj -MD -MP -c -o alsamixer-textbox.obj `if test -f 'textbox.c'; then echo 'textbox.c'; else echo './textbox.c'; fi`

alsamixer-utils.o: utils.c
	$(COMPILE) -MT alsamixer-utils.o -MD -MP -c -o alsamixer-utils.o `test -f 'utils.c' || echo './'`utils.c

alsamixer-utils.obj: utils.c
	$(COMPILE) -MT alsamixer-utils.obj -MD -MP -c -o alsamixer-utils.obj `if test -f 'utils.c'; then echo 'utils.c'; else echo './utils.c'; fi`

alsamixer-volume_mapping.o: volume_mapping.c
	$(COMPILE) -MT alsamixer-volume_mapping.o -MD -MP -c -o alsamixer-volume_mapping.o `test -f 'volume_mapping.c' || echo './'`volume_mapping.c

alsamixer-volume_mapping.obj: volume_mapping.c
	$(COMPILE) -MT alsamixer-volume_mapping.obj -MD -MP -c -o alsamixer-volume_mapping.obj `if test -f 'volume_mapping.c'; then echo 'volume_mapping.c'; else echo './volume_mapping.c'; fi`

alsamixer-widget.o: widget.c
	$(COMPILE) -MT alsamixer-widget.o -MD -MP -c -o alsamixer-widget.o `test -f 'widget.c' || echo './'`widget.c

alsamixer-widget.obj: widget.c
	$(COMPILE) -MT alsamixer-widget.obj -MD -MP -c -o alsamixer-widget.obj `if test -f 'widget.c'; then echo 'widget.c'; else echo './widget.c'; fi`

install: $(BINARY)
	mkdir -p $(BIN)
	cp -f $(BINARY) $(BIN)/$(BINARY)
	mkdir -p $(MAN)
	cp -f $(MANUAL) $(MAN)/$(MANUAL)

clean:
	rm -rf *.o
	rm -rf *.d
	rm -rf $(BINARY)

uninstall: clean
	rm -rf $(BIN)/$(BINARY)
	rm -rf $(MAN)/$(MANUAL)

.PHONY: install clean uninstall $(BINARY)
