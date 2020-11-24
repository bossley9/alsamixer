BINARY=alsamixer
MANUAL=$(BINARY).1

PREFIX=/usr/local
BIN=$(PREFIX)/bin
MAN=$(PREFIX)/share/man/man1

LDFLAGS=

prefix=$(PREFIX)

transform = $(program_transform_name)
bin_PROGRAMS = alsamixer$(EXEEXT)
PROGRAMS = $(bin_PROGRAMS)
am_alsamixer_OBJECTS = alsamixer-card_select.$(OBJEXT) \
	alsamixer-bindings.$(OBJEXT) alsamixer-cli.$(OBJEXT) \
	alsamixer-colors.$(OBJEXT) alsamixer-curskey.$(OBJEXT) \
	alsamixer-configparser.$(OBJEXT) \
	alsamixer-device_name.$(OBJEXT) alsamixer-die.$(OBJEXT) \
	alsamixer-mainloop.$(OBJEXT) alsamixer-mem.$(OBJEXT) \
	alsamixer-menu_widget.$(OBJEXT) \
	alsamixer-mixer_clickable.$(OBJEXT) \
	alsamixer-mixer_controls.$(OBJEXT) \
	alsamixer-mixer_display.$(OBJEXT) \
	alsamixer-mixer_widget.$(OBJEXT) \
	alsamixer-proc_files.$(OBJEXT) alsamixer-textbox.$(OBJEXT) \
	alsamixer-utils.$(OBJEXT) alsamixer-volume_mapping.$(OBJEXT) \
	alsamixer-widget.$(OBJEXT)
alsamixer_OBJECTS = $(am_alsamixer_OBJECTS)
alsamixer_LDADD = $(LDADD)
AM_V_P = $(am__v_P_$(V))
am__v_P_ = $(am__v_P_$(AM_DEFAULT_VERBOSITY))
AM_V_GEN = $(am__v_GEN_$(V))
am__v_GEN_ = $(am__v_GEN_$(AM_DEFAULT_VERBOSITY))
am__v_GEN_0 = @echo "  GEN     " $@;
am__v_GEN_1 = 
AM_V_at = $(am__v_at_$(V))
am__v_at_ = $(am__v_at_$(AM_DEFAULT_VERBOSITY))
DEFAULT_INCLUDES = -I.
am__mv = mv -f
AM_V_lt = $(am__v_lt_$(V))
am__v_lt_ = $(am__v_lt_$(AM_DEFAULT_VERBOSITY))
am__v_lt_0 = --silent
am__v_lt_1 = 
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	$(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
AM_V_CC = $(am__v_CC_$(V))
am__v_CC_ = $(am__v_CC_$(AM_DEFAULT_VERBOSITY))
am__v_CC_0 = @echo "  CC      " $@;
am__v_CC_1 = 
CCLD = $(CC)
LINK = $(CCLD) $(AM_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o $@
AM_V_CCLD = $(am__v_CCLD_$(V))
am__v_CCLD_ = $(am__v_CCLD_$(AM_DEFAULT_VERBOSITY))
am__v_CCLD_0 = @echo "  CCLD    " $@;
am__v_CCLD_1 = 
SOURCES = $(alsamixer_SOURCES)
AM_DEFAULT_VERBOSITY = 1
AWK = gawk
CFLAGS = -O2 -Wall -pipe -g
CPP = gcc -E
CPPFLAGS = 
CURSESINC = <ncurses.h>
CURSESLIB = -lformw -lmenuw -lpanelw -Wl,-O1,--sort-common,--as-needed,-z,relro,-z,now -lncursesw 
CURSES_CFLAGS = -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 
CYGPATH_W = echo
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
EXEEXT = 
INSTALL = /usr/bin/install -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
LIBS = -lasound -lm -ldl -lpthread
MKDIR_P = /usr/bin/mkdir -p
OBJEXT = o
PATH_SEPARATOR = :
bindir = ${exec_prefix}/bin
exec_prefix = ${prefix}
mkdir_p = $(MKDIR_P)
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

.SUFFIXES:
.SUFFIXES: .c .o .obj

install-binPROGRAMS: $(bin_PROGRAMS)
	mkdir -p $(BIN)
	@list='$(bin_PROGRAMS)'; test -n "$(bindir)" || list=; \
	if test -n "$$list"; then \
	  echo " $(MKDIR_P) '$(DESTDIR)$(bindir)'"; \
	  $(MKDIR_P) "$(DESTDIR)$(bindir)" || exit 1; \
	fi; \
	for p in $$list; do echo "$$p $$p"; done | \
	sed 's/$(EXEEXT)$$//' | \
	while read p p1; do if test -f $$p \
	  ; then echo "$$p"; echo "$$p"; else :; fi; \
	done | \
	sed -e 'p;s,.*/,,;n;h' \
	    -e 's|.*|.|' \
	    -e 'p;x;s,.*/,,;s/$(EXEEXT)$$//;$(transform);s/$$/$(EXEEXT)/' | \
	sed 'N;N;N;s,\n, ,g' | \
	$(AWK) 'BEGIN { files["."] = ""; dirs["."] = 1 } \
	  { d=$$3; if (dirs[d] != 1) { print "d", d; dirs[d] = 1 } \
	    if ($$2 == $$4) files[d] = files[d] " " $$1; \
	    else { print "f", $$3 "/" $$4, $$1; } } \
	  END { for (d in files) print "f", d, files[d] }' | \
	while read type dir files; do \
	    if test "$$dir" = .; then dir=; else dir=/$$dir; fi; \
	    test -z "$$files" || { \
	      echo " $(INSTALL_PROGRAM_ENV) $(INSTALL_PROGRAM) $$files '$(DESTDIR)$(bindir)$$dir'"; \
	      $(INSTALL_PROGRAM_ENV) $(INSTALL_PROGRAM) $$files "$(DESTDIR)$(bindir)$$dir" || exit $$?; \
	    } \
	; done

alsamixer$(EXEEXT): $(alsamixer_OBJECTS) $(EXTRA_alsamixer_DEPENDENCIES) 
	@rm -f alsamixer$(EXEEXT)
	$(AM_V_CCLD)$(LINK) $(alsamixer_OBJECTS) $(alsamixer_LDADD) $(LIBS)

alsamixer-card_select.o: card_select.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-card_select.o -MD -MP -MF $(DEPDIR)/alsamixer-card_select.Tpo -c -o alsamixer-card_select.o `test -f 'card_select.c' || echo './'`card_select.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-card_select.Tpo $(DEPDIR)/alsamixer-card_select.Po

alsamixer-card_select.obj: card_select.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-card_select.obj -MD -MP -MF $(DEPDIR)/alsamixer-card_select.Tpo -c -o alsamixer-card_select.obj `if test -f 'card_select.c'; then $(CYGPATH_W) 'card_select.c'; else $(CYGPATH_W) './card_select.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-card_select.Tpo $(DEPDIR)/alsamixer-card_select.Po

alsamixer-bindings.o: bindings.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-bindings.o -MD -MP -MF $(DEPDIR)/alsamixer-bindings.Tpo -c -o alsamixer-bindings.o `test -f 'bindings.c' || echo './'`bindings.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-bindings.Tpo $(DEPDIR)/alsamixer-bindings.Po

alsamixer-bindings.obj: bindings.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-bindings.obj -MD -MP -MF $(DEPDIR)/alsamixer-bindings.Tpo -c -o alsamixer-bindings.obj `if test -f 'bindings.c'; then $(CYGPATH_W) 'bindings.c'; else $(CYGPATH_W) './bindings.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-bindings.Tpo $(DEPDIR)/alsamixer-bindings.Po

alsamixer-cli.o: cli.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-cli.o -MD -MP -MF $(DEPDIR)/alsamixer-cli.Tpo -c -o alsamixer-cli.o `test -f 'cli.c' || echo './'`cli.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-cli.Tpo $(DEPDIR)/alsamixer-cli.Po

alsamixer-cli.obj: cli.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-cli.obj -MD -MP -MF $(DEPDIR)/alsamixer-cli.Tpo -c -o alsamixer-cli.obj `if test -f 'cli.c'; then $(CYGPATH_W) 'cli.c'; else $(CYGPATH_W) './cli.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-cli.Tpo $(DEPDIR)/alsamixer-cli.Po

alsamixer-colors.o: colors.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-colors.o -MD -MP -MF $(DEPDIR)/alsamixer-colors.Tpo -c -o alsamixer-colors.o `test -f 'colors.c' || echo './'`colors.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-colors.Tpo $(DEPDIR)/alsamixer-colors.Po

alsamixer-colors.obj: colors.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-colors.obj -MD -MP -MF $(DEPDIR)/alsamixer-colors.Tpo -c -o alsamixer-colors.obj `if test -f 'colors.c'; then $(CYGPATH_W) 'colors.c'; else $(CYGPATH_W) './colors.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-colors.Tpo $(DEPDIR)/alsamixer-colors.Po

alsamixer-curskey.o: curskey.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-curskey.o -MD -MP -MF $(DEPDIR)/alsamixer-curskey.Tpo -c -o alsamixer-curskey.o `test -f 'curskey.c' || echo './'`curskey.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-curskey.Tpo $(DEPDIR)/alsamixer-curskey.Po

alsamixer-curskey.obj: curskey.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-curskey.obj -MD -MP -MF $(DEPDIR)/alsamixer-curskey.Tpo -c -o alsamixer-curskey.obj `if test -f 'curskey.c'; then $(CYGPATH_W) 'curskey.c'; else $(CYGPATH_W) './curskey.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-curskey.Tpo $(DEPDIR)/alsamixer-curskey.Po

alsamixer-configparser.o: configparser.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-configparser.o -MD -MP -MF $(DEPDIR)/alsamixer-configparser.Tpo -c -o alsamixer-configparser.o `test -f 'configparser.c' || echo './'`configparser.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-configparser.Tpo $(DEPDIR)/alsamixer-configparser.Po

alsamixer-configparser.obj: configparser.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-configparser.obj -MD -MP -MF $(DEPDIR)/alsamixer-configparser.Tpo -c -o alsamixer-configparser.obj `if test -f 'configparser.c'; then $(CYGPATH_W) 'configparser.c'; else $(CYGPATH_W) './configparser.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-configparser.Tpo $(DEPDIR)/alsamixer-configparser.Po

alsamixer-device_name.o: device_name.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-device_name.o -MD -MP -MF $(DEPDIR)/alsamixer-device_name.Tpo -c -o alsamixer-device_name.o `test -f 'device_name.c' || echo './'`device_name.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-device_name.Tpo $(DEPDIR)/alsamixer-device_name.Po

alsamixer-device_name.obj: device_name.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-device_name.obj -MD -MP -MF $(DEPDIR)/alsamixer-device_name.Tpo -c -o alsamixer-device_name.obj `if test -f 'device_name.c'; then $(CYGPATH_W) 'device_name.c'; else $(CYGPATH_W) './device_name.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-device_name.Tpo $(DEPDIR)/alsamixer-device_name.Po

alsamixer-die.o: die.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-die.o -MD -MP -MF $(DEPDIR)/alsamixer-die.Tpo -c -o alsamixer-die.o `test -f 'die.c' || echo './'`die.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-die.Tpo $(DEPDIR)/alsamixer-die.Po

alsamixer-die.obj: die.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-die.obj -MD -MP -MF $(DEPDIR)/alsamixer-die.Tpo -c -o alsamixer-die.obj `if test -f 'die.c'; then $(CYGPATH_W) 'die.c'; else $(CYGPATH_W) './die.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-die.Tpo $(DEPDIR)/alsamixer-die.Po

alsamixer-mainloop.o: mainloop.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mainloop.o -MD -MP -MF $(DEPDIR)/alsamixer-mainloop.Tpo -c -o alsamixer-mainloop.o `test -f 'mainloop.c' || echo './'`mainloop.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mainloop.Tpo $(DEPDIR)/alsamixer-mainloop.Po

alsamixer-mainloop.obj: mainloop.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mainloop.obj -MD -MP -MF $(DEPDIR)/alsamixer-mainloop.Tpo -c -o alsamixer-mainloop.obj `if test -f 'mainloop.c'; then $(CYGPATH_W) 'mainloop.c'; else $(CYGPATH_W) './mainloop.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mainloop.Tpo $(DEPDIR)/alsamixer-mainloop.Po

alsamixer-mem.o: mem.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mem.o -MD -MP -MF $(DEPDIR)/alsamixer-mem.Tpo -c -o alsamixer-mem.o `test -f 'mem.c' || echo './'`mem.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mem.Tpo $(DEPDIR)/alsamixer-mem.Po

alsamixer-mem.obj: mem.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mem.obj -MD -MP -MF $(DEPDIR)/alsamixer-mem.Tpo -c -o alsamixer-mem.obj `if test -f 'mem.c'; then $(CYGPATH_W) 'mem.c'; else $(CYGPATH_W) './mem.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mem.Tpo $(DEPDIR)/alsamixer-mem.Po

alsamixer-menu_widget.o: menu_widget.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-menu_widget.o -MD -MP -MF $(DEPDIR)/alsamixer-menu_widget.Tpo -c -o alsamixer-menu_widget.o `test -f 'menu_widget.c' || echo './'`menu_widget.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-menu_widget.Tpo $(DEPDIR)/alsamixer-menu_widget.Po

alsamixer-menu_widget.obj: menu_widget.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-menu_widget.obj -MD -MP -MF $(DEPDIR)/alsamixer-menu_widget.Tpo -c -o alsamixer-menu_widget.obj `if test -f 'menu_widget.c'; then $(CYGPATH_W) 'menu_widget.c'; else $(CYGPATH_W) './menu_widget.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-menu_widget.Tpo $(DEPDIR)/alsamixer-menu_widget.Po

alsamixer-mixer_clickable.o: mixer_clickable.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_clickable.o -MD -MP -MF $(DEPDIR)/alsamixer-mixer_clickable.Tpo -c -o alsamixer-mixer_clickable.o `test -f 'mixer_clickable.c' || echo './'`mixer_clickable.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_clickable.Tpo $(DEPDIR)/alsamixer-mixer_clickable.Po

alsamixer-mixer_clickable.obj: mixer_clickable.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_clickable.obj -MD -MP -MF $(DEPDIR)/alsamixer-mixer_clickable.Tpo -c -o alsamixer-mixer_clickable.obj `if test -f 'mixer_clickable.c'; then $(CYGPATH_W) 'mixer_clickable.c'; else $(CYGPATH_W) './mixer_clickable.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_clickable.Tpo $(DEPDIR)/alsamixer-mixer_clickable.Po

alsamixer-mixer_controls.o: mixer_controls.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_controls.o -MD -MP -MF $(DEPDIR)/alsamixer-mixer_controls.Tpo -c -o alsamixer-mixer_controls.o `test -f 'mixer_controls.c' || echo './'`mixer_controls.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_controls.Tpo $(DEPDIR)/alsamixer-mixer_controls.Po

alsamixer-mixer_controls.obj: mixer_controls.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_controls.obj -MD -MP -MF $(DEPDIR)/alsamixer-mixer_controls.Tpo -c -o alsamixer-mixer_controls.obj `if test -f 'mixer_controls.c'; then $(CYGPATH_W) 'mixer_controls.c'; else $(CYGPATH_W) './mixer_controls.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_controls.Tpo $(DEPDIR)/alsamixer-mixer_controls.Po

alsamixer-mixer_display.o: mixer_display.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_display.o -MD -MP -MF $(DEPDIR)/alsamixer-mixer_display.Tpo -c -o alsamixer-mixer_display.o `test -f 'mixer_display.c' || echo './'`mixer_display.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_display.Tpo $(DEPDIR)/alsamixer-mixer_display.Po

alsamixer-mixer_display.obj: mixer_display.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_display.obj -MD -MP -MF $(DEPDIR)/alsamixer-mixer_display.Tpo -c -o alsamixer-mixer_display.obj `if test -f 'mixer_display.c'; then $(CYGPATH_W) 'mixer_display.c'; else $(CYGPATH_W) './mixer_display.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_display.Tpo $(DEPDIR)/alsamixer-mixer_display.Po

alsamixer-mixer_widget.o: mixer_widget.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_widget.o -MD -MP -MF $(DEPDIR)/alsamixer-mixer_widget.Tpo -c -o alsamixer-mixer_widget.o `test -f 'mixer_widget.c' || echo './'`mixer_widget.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_widget.Tpo $(DEPDIR)/alsamixer-mixer_widget.Po

alsamixer-mixer_widget.obj: mixer_widget.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_widget.obj -MD -MP -MF $(DEPDIR)/alsamixer-mixer_widget.Tpo -c -o alsamixer-mixer_widget.obj `if test -f 'mixer_widget.c'; then $(CYGPATH_W) 'mixer_widget.c'; else $(CYGPATH_W) './mixer_widget.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_widget.Tpo $(DEPDIR)/alsamixer-mixer_widget.Po

alsamixer-proc_files.o: proc_files.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-proc_files.o -MD -MP -MF $(DEPDIR)/alsamixer-proc_files.Tpo -c -o alsamixer-proc_files.o `test -f 'proc_files.c' || echo './'`proc_files.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-proc_files.Tpo $(DEPDIR)/alsamixer-proc_files.Po

alsamixer-proc_files.obj: proc_files.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-proc_files.obj -MD -MP -MF $(DEPDIR)/alsamixer-proc_files.Tpo -c -o alsamixer-proc_files.obj `if test -f 'proc_files.c'; then $(CYGPATH_W) 'proc_files.c'; else $(CYGPATH_W) './proc_files.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-proc_files.Tpo $(DEPDIR)/alsamixer-proc_files.Po

alsamixer-textbox.o: textbox.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-textbox.o -MD -MP -MF $(DEPDIR)/alsamixer-textbox.Tpo -c -o alsamixer-textbox.o `test -f 'textbox.c' || echo './'`textbox.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-textbox.Tpo $(DEPDIR)/alsamixer-textbox.Po

alsamixer-textbox.obj: textbox.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-textbox.obj -MD -MP -MF $(DEPDIR)/alsamixer-textbox.Tpo -c -o alsamixer-textbox.obj `if test -f 'textbox.c'; then $(CYGPATH_W) 'textbox.c'; else $(CYGPATH_W) './textbox.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-textbox.Tpo $(DEPDIR)/alsamixer-textbox.Po

alsamixer-utils.o: utils.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-utils.o -MD -MP -MF $(DEPDIR)/alsamixer-utils.Tpo -c -o alsamixer-utils.o `test -f 'utils.c' || echo './'`utils.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-utils.Tpo $(DEPDIR)/alsamixer-utils.Po

alsamixer-utils.obj: utils.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-utils.obj -MD -MP -MF $(DEPDIR)/alsamixer-utils.Tpo -c -o alsamixer-utils.obj `if test -f 'utils.c'; then $(CYGPATH_W) 'utils.c'; else $(CYGPATH_W) './utils.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-utils.Tpo $(DEPDIR)/alsamixer-utils.Po

alsamixer-volume_mapping.o: volume_mapping.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-volume_mapping.o -MD -MP -MF $(DEPDIR)/alsamixer-volume_mapping.Tpo -c -o alsamixer-volume_mapping.o `test -f 'volume_mapping.c' || echo './'`volume_mapping.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-volume_mapping.Tpo $(DEPDIR)/alsamixer-volume_mapping.Po

alsamixer-volume_mapping.obj: volume_mapping.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-volume_mapping.obj -MD -MP -MF $(DEPDIR)/alsamixer-volume_mapping.Tpo -c -o alsamixer-volume_mapping.obj `if test -f 'volume_mapping.c'; then $(CYGPATH_W) 'volume_mapping.c'; else $(CYGPATH_W) './volume_mapping.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-volume_mapping.Tpo $(DEPDIR)/alsamixer-volume_mapping.Po

alsamixer-widget.o: widget.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-widget.o -MD -MP -MF $(DEPDIR)/alsamixer-widget.Tpo -c -o alsamixer-widget.o `test -f 'widget.c' || echo './'`widget.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-widget.Tpo $(DEPDIR)/alsamixer-widget.Po

alsamixer-widget.obj: widget.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-widget.obj -MD -MP -MF $(DEPDIR)/alsamixer-widget.Tpo -c -o alsamixer-widget.obj `if test -f 'widget.c'; then $(CYGPATH_W) 'widget.c'; else $(CYGPATH_W) './widget.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-widget.Tpo $(DEPDIR)/alsamixer-widget.Po

install: $(PROGRAMS)
	@$(MAKE) install-binPROGRAMS
	cp -f $(MANUAL) $(MAN)/$(MANUAL)

clean:
	rm -rf *.o
	rm -rf $(BINARY)

uninstall: clean
	rm -rf $(BIN)/$(BINARY)
	rm -rf $(MAN)/$(MANUAL)

.PHONY: install clean uninstall \
	install-binPROGRAMS install-data \
	install-exec install-exec-am
