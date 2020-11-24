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

alsamixer-card_select.obj: card_select.c
	$(COMPILE) -MT alsamixer-card_select.obj -MD -MP -c -o alsamixer-card_select.obj

alsamixer-bindings.o: bindings.c
	$(COMPILE) -MT alsamixer-bindings.o -MD -MP -c -o alsamixer-bindings.o bindings.c

alsamixer-bindings.obj: bindings.c
	$(COMPILE) -MT alsamixer-bindings.obj -MD -MP -c -o alsamixer-bindings.obj

alsamixer-cli.o: cli.c
	$(COMPILE) -MT alsamixer-cli.o -MD -MP -c -o alsamixer-cli.o cli.c

alsamixer-cli.obj: cli.c
	$(COMPILE) -MT alsamixer-cli.obj -MD -MP -c -o alsamixer-cli.obj

alsamixer-colors.o: colors.c
	$(COMPILE) -MT alsamixer-colors.o -MD -MP -c -o alsamixer-colors.o colors.c

alsamixer-colors.obj: colors.c
	$(COMPILE) -MT alsamixer-colors.obj -MD -MP -c -o alsamixer-colors.obj

alsamixer-curskey.o: curskey.c
	$(COMPILE) -MT alsamixer-curskey.o -MD -MP -c -o alsamixer-curskey.o curskey.c

alsamixer-curskey.obj: curskey.c
	$(COMPILE) -MT alsamixer-curskey.obj -MD -MP -c -o alsamixer-curskey.obj

alsamixer-configparser.o: configparser.c
	$(COMPILE) -MT alsamixer-configparser.o -MD -MP -c -o alsamixer-configparser.o configparser.c

alsamixer-configparser.obj: configparser.c
	$(COMPILE) -MT alsamixer-configparser.obj -MD -MP -c -o alsamixer-configparser.obj

alsamixer-device_name.o: device_name.c
	$(COMPILE) -MT alsamixer-device_name.o -MD -MP -c -o alsamixer-device_name.o device_name.c

alsamixer-device_name.obj: device_name.c
	$(COMPILE) -MT alsamixer-device_name.obj -MD -MP -c -o alsamixer-device_name.obj

alsamixer-die.o: die.c
	$(COMPILE) -MT alsamixer-die.o -MD -MP -c -o alsamixer-die.o die.c

alsamixer-die.obj: die.c
	$(COMPILE) -MT alsamixer-die.obj -MD -MP -c -o alsamixer-die.obj

alsamixer-mainloop.o: mainloop.c
	$(COMPILE) -MT alsamixer-mainloop.o -MD -MP -c -o alsamixer-mainloop.o mainloop.c

alsamixer-mainloop.obj: mainloop.c
	$(COMPILE) -MT alsamixer-mainloop.obj -MD -MP -c -o alsamixer-mainloop.obj

alsamixer-mem.o: mem.c
	$(COMPILE) -MT alsamixer-mem.o -MD -MP -c -o alsamixer-mem.o mem.c

alsamixer-mem.obj: mem.c
	$(COMPILE) -MT alsamixer-mem.obj -MD -MP -c -o alsamixer-mem.obj

alsamixer-menu_widget.o: menu_widget.c
	$(COMPILE) -MT alsamixer-menu_widget.o -MD -MP -c -o alsamixer-menu_widget.o menu_widget.c

alsamixer-menu_widget.obj: menu_widget.c
	$(COMPILE) -MT alsamixer-menu_widget.obj -MD -MP -c -o alsamixer-menu_widget.obj

alsamixer-mixer_clickable.o: mixer_clickable.c
	$(COMPILE) -MT alsamixer-mixer_clickable.o -MD -MP -c -o alsamixer-mixer_clickable.o mixer_clickable.c

alsamixer-mixer_clickable.obj: mixer_clickable.c
	$(COMPILE) -MT alsamixer-mixer_clickable.obj -MD -MP -c -o alsamixer-mixer_clickable.obj

alsamixer-mixer_controls.o: mixer_controls.c
	$(COMPILE) -MT alsamixer-mixer_controls.o -MD -MP -c -o alsamixer-mixer_controls.o mixer_controls.c

alsamixer-mixer_controls.obj: mixer_controls.c
	$(COMPILE) -MT alsamixer-mixer_controls.obj -MD -MP -c -o alsamixer-mixer_controls.obj

alsamixer-mixer_display.o: mixer_display.c
	$(COMPILE) -MT alsamixer-mixer_display.o -MD -MP -c -o alsamixer-mixer_display.o mixer_display.c

alsamixer-mixer_display.obj: mixer_display.c
	$(COMPILE) -MT alsamixer-mixer_display.obj -MD -MP -c -o alsamixer-mixer_display.obj

alsamixer-mixer_widget.o: mixer_widget.c
	$(COMPILE) -MT alsamixer-mixer_widget.o -MD -MP -c -o alsamixer-mixer_widget.o mixer_widget.c

alsamixer-mixer_widget.obj: mixer_widget.c
	$(COMPILE) -MT alsamixer-mixer_widget.obj -MD -MP -c -o alsamixer-mixer_widget.obj

alsamixer-proc_files.o: proc_files.c
	$(COMPILE) -MT alsamixer-proc_files.o -MD -MP -c -o alsamixer-proc_files.o proc_files.c

alsamixer-proc_files.obj: proc_files.c
	$(COMPILE) -MT alsamixer-proc_files.obj -MD -MP -c -o alsamixer-proc_files.obj

alsamixer-textbox.o: textbox.c
	$(COMPILE) -MT alsamixer-textbox.o -MD -MP -c -o alsamixer-textbox.o textbox.c

alsamixer-textbox.obj: textbox.c
	$(COMPILE) -MT alsamixer-textbox.obj -MD -MP -c -o alsamixer-textbox.obj

alsamixer-utils.o: utils.c
	$(COMPILE) -MT alsamixer-utils.o -MD -MP -c -o alsamixer-utils.o utils.c

alsamixer-utils.obj: utils.c
	$(COMPILE) -MT alsamixer-utils.obj -MD -MP -c -o alsamixer-utils.obj

alsamixer-volume_mapping.o: volume_mapping.c
	$(COMPILE) -MT alsamixer-volume_mapping.o -MD -MP -c -o alsamixer-volume_mapping.o volume_mapping.c

alsamixer-volume_mapping.obj: volume_mapping.c
	$(COMPILE) -MT alsamixer-volume_mapping.obj -MD -MP -c -o alsamixer-volume_mapping.obj

alsamixer-widget.o: widget.c
	$(COMPILE) -MT alsamixer-widget.o -MD -MP -c -o alsamixer-widget.o widget.c

alsamixer-widget.obj: widget.c
	$(COMPILE) -MT alsamixer-widget.obj -MD -MP -c -o alsamixer-widget.obj

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
