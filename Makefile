BINARY=alsamixer
MANUAL=$(BINARY).1

PREFIX=/usr/local
BIN=$(PREFIX)/bin
MAN=$(PREFIX)/share/man/man1

LDFLAGS=

prefix=$(PREFIX)

transform = $(program_transform_name)
bin_PROGRAMS = alsamixer$(EXEEXT)
subdir = alsamixer
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/m4/gettext.m4 \
	$(top_srcdir)/m4/host-cpu-c-abi.m4 $(top_srcdir)/m4/iconv.m4 \
	$(top_srcdir)/m4/intlmacosx.m4 $(top_srcdir)/m4/lib-ld.m4 \
	$(top_srcdir)/m4/lib-link.m4 $(top_srcdir)/m4/lib-prefix.m4 \
	$(top_srcdir)/m4/nls.m4 $(top_srcdir)/m4/po.m4 \
	$(top_srcdir)/m4/progtest.m4 $(top_srcdir)/acinclude.m4 \
	$(top_srcdir)/configure.ac
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
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
DEFAULT_INCLUDES = -I. -I$(top_builddir)/include
depcomp = $(SHELL) $(top_srcdir)/depcomp
am__depfiles_remade = ./$(DEPDIR)/alsamixer-bindings.Po \
	./$(DEPDIR)/alsamixer-card_select.Po \
	./$(DEPDIR)/alsamixer-cli.Po ./$(DEPDIR)/alsamixer-colors.Po \
	./$(DEPDIR)/alsamixer-configparser.Po \
	./$(DEPDIR)/alsamixer-curskey.Po \
	./$(DEPDIR)/alsamixer-device_name.Po \
	./$(DEPDIR)/alsamixer-die.Po ./$(DEPDIR)/alsamixer-mainloop.Po \
	./$(DEPDIR)/alsamixer-mem.Po \
	./$(DEPDIR)/alsamixer-menu_widget.Po \
	./$(DEPDIR)/alsamixer-mixer_clickable.Po \
	./$(DEPDIR)/alsamixer-mixer_controls.Po \
	./$(DEPDIR)/alsamixer-mixer_display.Po \
	./$(DEPDIR)/alsamixer-mixer_widget.Po \
	./$(DEPDIR)/alsamixer-proc_files.Po \
	./$(DEPDIR)/alsamixer-textbox.Po \
	./$(DEPDIR)/alsamixer-utils.Po \
	./$(DEPDIR)/alsamixer-volume_mapping.Po \
	./$(DEPDIR)/alsamixer-widget.Po
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
am__can_run_installinfo = \
  case $$AM_UPDATE_INFO_DIR in \
    n|no|NO) false;; \
  esac
am__vpath_adj_setup = srcdirstrip=`echo "$(srcdir)" | sed 's|.|.|g'`;
am__vpath_adj = case $$p in \
    $(srcdir)/*) f=`echo "$$p" | sed "s|^$$srcdirstrip/||"`;; \
    *) f=$$p;; \
  esac;
MANS = $(man_MANS)
ACLOCAL = ${SHELL} /home/sam/Repos/alsamixer/missing aclocal-1.16
ALSACTL_DAEMONSWITCH = /etc/alsa/state-daemon.conf
ALSACTL_PIDFILE_DIR = /var/run
ALSA_CFLAGS = 
ALSA_LIBS =  -lasound -lm -ldl -lpthread
ALSA_TOPOLOGY_LIBS =  -latopology
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
INSTALL_STRIP_PROGRAM = $(install_sh) -c -s
LIBINTL = 
LIBS = -lasound -lm -ldl -lpthread
MAKEINFO = ${SHELL} /home/sam/Repos/alsamixer/missing makeinfo
MKDIR_P = /usr/bin/mkdir -p
NCURSESW_CFLAGS = -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 
NCURSESW_LIBS = -Wl,-O1,--sort-common,--as-needed,-z,relro,-z,now -lncursesw 
NCURSES_CFLAGS = 
NCURSES_LIBS = 
OBJEXT = o
PACKAGE = alsa-utils
PACKAGE_TARNAME = alsa-utils
PACKAGE_URL = 
PACKAGE_VERSION = 1.2.4
PATH_SEPARATOR = :
PKG_CONFIG = /usr/bin/pkg-config
PKG_CONFIG_LIBDIR = 
PKG_CONFIG_PATH = 
POSUB = po
SED = /usr/bin/sed
SET_MAKE = 
SHELL = /bin/sh
SND_UTIL_MAJOR = 1
SND_UTIL_MINOR = 2
SND_UTIL_SUBMINOR = 4
SND_UTIL_VERSION = 1.2.4
STRIP = 
SYSTEMD_CFLAGS = 
SYSTEMD_LIBS = 
TESTSOUND = /usr/share/test.wav
USE_NLS = yes
VERSION = 1.2.4
XGETTEXT = /usr/bin/xgettext
XGETTEXT_015 = /usr/bin/xgettext
XGETTEXT_EXTRA_OPTIONS = 
abs_builddir = /home/sam/Repos/alsamixer/alsamixer
abs_srcdir = /home/sam/Repos/alsamixer/alsamixer
abs_top_builddir = /home/sam/Repos/alsamixer
abs_top_srcdir = /home/sam/Repos/alsamixer
ac_ct_CC = gcc
am__include = include
am__leading_dot = .
am__quote = 
am__tar = $${TAR-tar} chof - "$$tardir"
am__untar = $${TAR-tar} xf -
bindir = ${exec_prefix}/bin
build = x86_64-pc-linux-gnu
build_alias = 
build_cpu = x86_64
build_os = linux-gnu
build_vendor = pc
builddir = .
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
exec_prefix = ${prefix}
host = x86_64-pc-linux-gnu
host_alias = 
host_cpu = x86_64
host_os = linux-gnu
host_vendor = pc
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = ${SHELL} /home/sam/Repos/alsamixer/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
mandir = ${datarootdir}/man
mkdir_p = $(MKDIR_P)
mydatadir = /usr/share/alsa
ncurses5_config = 
ncursesw5_config = 
oldincludedir = /usr/include
program_transform_name = s,x,x,
srcdir = .
top_build_prefix = ../
top_builddir = .
top_srcdir = ..
udevrulesdir = /usr/lib/udev/rules.d
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

man_MANS = alsamixer.1
alsamixer_CPPFLAGS = -I$(top_srcdir)/include
all: all-am

.SUFFIXES:
.SUFFIXES: .c .o .obj

Makefile: $(top_builddir)/config.status

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)

$(top_srcdir)/configure:  $(am__configure_deps)

$(ACLOCAL_M4):  $(am__aclocal_m4_deps)

$(am__aclocal_m4_deps):
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

include ./$(DEPDIR)/alsamixer-bindings.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-card_select.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-cli.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-colors.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-configparser.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-curskey.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-device_name.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-die.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-mainloop.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-mem.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-menu_widget.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-mixer_clickable.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-mixer_controls.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-mixer_display.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-mixer_widget.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-proc_files.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-textbox.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-utils.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-volume_mapping.Po # am--include-marker
include ./$(DEPDIR)/alsamixer-widget.Po # am--include-marker

$(am__depfiles_remade):
	@$(MKDIR_P) $(@D)
	@echo '# dummy' >$@-t && $(am__mv) $@-t $@

am--depfiles: $(am__depfiles_remade)

.c.o:
	$(AM_V_CC)$(COMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ $<
	$(AM_V_at)$(am__mv) $(DEPDIR)/$*.Tpo $(DEPDIR)/$*.Po

.c.obj:
	$(AM_V_CC)$(COMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ `$(CYGPATH_W) '$<'`
	$(AM_V_at)$(am__mv) $(DEPDIR)/$*.Tpo $(DEPDIR)/$*.Po

alsamixer-card_select.o: card_select.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-card_select.o -MD -MP -MF $(DEPDIR)/alsamixer-card_select.Tpo -c -o alsamixer-card_select.o `test -f 'card_select.c' || echo '$(srcdir)/'`card_select.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-card_select.Tpo $(DEPDIR)/alsamixer-card_select.Po

alsamixer-card_select.obj: card_select.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-card_select.obj -MD -MP -MF $(DEPDIR)/alsamixer-card_select.Tpo -c -o alsamixer-card_select.obj `if test -f 'card_select.c'; then $(CYGPATH_W) 'card_select.c'; else $(CYGPATH_W) '$(srcdir)/card_select.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-card_select.Tpo $(DEPDIR)/alsamixer-card_select.Po

alsamixer-bindings.o: bindings.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-bindings.o -MD -MP -MF $(DEPDIR)/alsamixer-bindings.Tpo -c -o alsamixer-bindings.o `test -f 'bindings.c' || echo '$(srcdir)/'`bindings.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-bindings.Tpo $(DEPDIR)/alsamixer-bindings.Po

alsamixer-bindings.obj: bindings.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-bindings.obj -MD -MP -MF $(DEPDIR)/alsamixer-bindings.Tpo -c -o alsamixer-bindings.obj `if test -f 'bindings.c'; then $(CYGPATH_W) 'bindings.c'; else $(CYGPATH_W) '$(srcdir)/bindings.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-bindings.Tpo $(DEPDIR)/alsamixer-bindings.Po

alsamixer-cli.o: cli.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-cli.o -MD -MP -MF $(DEPDIR)/alsamixer-cli.Tpo -c -o alsamixer-cli.o `test -f 'cli.c' || echo '$(srcdir)/'`cli.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-cli.Tpo $(DEPDIR)/alsamixer-cli.Po

alsamixer-cli.obj: cli.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-cli.obj -MD -MP -MF $(DEPDIR)/alsamixer-cli.Tpo -c -o alsamixer-cli.obj `if test -f 'cli.c'; then $(CYGPATH_W) 'cli.c'; else $(CYGPATH_W) '$(srcdir)/cli.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-cli.Tpo $(DEPDIR)/alsamixer-cli.Po

alsamixer-colors.o: colors.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-colors.o -MD -MP -MF $(DEPDIR)/alsamixer-colors.Tpo -c -o alsamixer-colors.o `test -f 'colors.c' || echo '$(srcdir)/'`colors.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-colors.Tpo $(DEPDIR)/alsamixer-colors.Po

alsamixer-colors.obj: colors.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-colors.obj -MD -MP -MF $(DEPDIR)/alsamixer-colors.Tpo -c -o alsamixer-colors.obj `if test -f 'colors.c'; then $(CYGPATH_W) 'colors.c'; else $(CYGPATH_W) '$(srcdir)/colors.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-colors.Tpo $(DEPDIR)/alsamixer-colors.Po

alsamixer-curskey.o: curskey.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-curskey.o -MD -MP -MF $(DEPDIR)/alsamixer-curskey.Tpo -c -o alsamixer-curskey.o `test -f 'curskey.c' || echo '$(srcdir)/'`curskey.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-curskey.Tpo $(DEPDIR)/alsamixer-curskey.Po

alsamixer-curskey.obj: curskey.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-curskey.obj -MD -MP -MF $(DEPDIR)/alsamixer-curskey.Tpo -c -o alsamixer-curskey.obj `if test -f 'curskey.c'; then $(CYGPATH_W) 'curskey.c'; else $(CYGPATH_W) '$(srcdir)/curskey.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-curskey.Tpo $(DEPDIR)/alsamixer-curskey.Po

alsamixer-configparser.o: configparser.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-configparser.o -MD -MP -MF $(DEPDIR)/alsamixer-configparser.Tpo -c -o alsamixer-configparser.o `test -f 'configparser.c' || echo '$(srcdir)/'`configparser.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-configparser.Tpo $(DEPDIR)/alsamixer-configparser.Po

alsamixer-configparser.obj: configparser.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-configparser.obj -MD -MP -MF $(DEPDIR)/alsamixer-configparser.Tpo -c -o alsamixer-configparser.obj `if test -f 'configparser.c'; then $(CYGPATH_W) 'configparser.c'; else $(CYGPATH_W) '$(srcdir)/configparser.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-configparser.Tpo $(DEPDIR)/alsamixer-configparser.Po

alsamixer-device_name.o: device_name.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-device_name.o -MD -MP -MF $(DEPDIR)/alsamixer-device_name.Tpo -c -o alsamixer-device_name.o `test -f 'device_name.c' || echo '$(srcdir)/'`device_name.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-device_name.Tpo $(DEPDIR)/alsamixer-device_name.Po

alsamixer-device_name.obj: device_name.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-device_name.obj -MD -MP -MF $(DEPDIR)/alsamixer-device_name.Tpo -c -o alsamixer-device_name.obj `if test -f 'device_name.c'; then $(CYGPATH_W) 'device_name.c'; else $(CYGPATH_W) '$(srcdir)/device_name.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-device_name.Tpo $(DEPDIR)/alsamixer-device_name.Po

alsamixer-die.o: die.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-die.o -MD -MP -MF $(DEPDIR)/alsamixer-die.Tpo -c -o alsamixer-die.o `test -f 'die.c' || echo '$(srcdir)/'`die.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-die.Tpo $(DEPDIR)/alsamixer-die.Po

alsamixer-die.obj: die.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-die.obj -MD -MP -MF $(DEPDIR)/alsamixer-die.Tpo -c -o alsamixer-die.obj `if test -f 'die.c'; then $(CYGPATH_W) 'die.c'; else $(CYGPATH_W) '$(srcdir)/die.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-die.Tpo $(DEPDIR)/alsamixer-die.Po

alsamixer-mainloop.o: mainloop.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mainloop.o -MD -MP -MF $(DEPDIR)/alsamixer-mainloop.Tpo -c -o alsamixer-mainloop.o `test -f 'mainloop.c' || echo '$(srcdir)/'`mainloop.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mainloop.Tpo $(DEPDIR)/alsamixer-mainloop.Po

alsamixer-mainloop.obj: mainloop.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mainloop.obj -MD -MP -MF $(DEPDIR)/alsamixer-mainloop.Tpo -c -o alsamixer-mainloop.obj `if test -f 'mainloop.c'; then $(CYGPATH_W) 'mainloop.c'; else $(CYGPATH_W) '$(srcdir)/mainloop.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mainloop.Tpo $(DEPDIR)/alsamixer-mainloop.Po

alsamixer-mem.o: mem.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mem.o -MD -MP -MF $(DEPDIR)/alsamixer-mem.Tpo -c -o alsamixer-mem.o `test -f 'mem.c' || echo '$(srcdir)/'`mem.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mem.Tpo $(DEPDIR)/alsamixer-mem.Po

alsamixer-mem.obj: mem.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mem.obj -MD -MP -MF $(DEPDIR)/alsamixer-mem.Tpo -c -o alsamixer-mem.obj `if test -f 'mem.c'; then $(CYGPATH_W) 'mem.c'; else $(CYGPATH_W) '$(srcdir)/mem.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mem.Tpo $(DEPDIR)/alsamixer-mem.Po

alsamixer-menu_widget.o: menu_widget.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-menu_widget.o -MD -MP -MF $(DEPDIR)/alsamixer-menu_widget.Tpo -c -o alsamixer-menu_widget.o `test -f 'menu_widget.c' || echo '$(srcdir)/'`menu_widget.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-menu_widget.Tpo $(DEPDIR)/alsamixer-menu_widget.Po

alsamixer-menu_widget.obj: menu_widget.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-menu_widget.obj -MD -MP -MF $(DEPDIR)/alsamixer-menu_widget.Tpo -c -o alsamixer-menu_widget.obj `if test -f 'menu_widget.c'; then $(CYGPATH_W) 'menu_widget.c'; else $(CYGPATH_W) '$(srcdir)/menu_widget.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-menu_widget.Tpo $(DEPDIR)/alsamixer-menu_widget.Po

alsamixer-mixer_clickable.o: mixer_clickable.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_clickable.o -MD -MP -MF $(DEPDIR)/alsamixer-mixer_clickable.Tpo -c -o alsamixer-mixer_clickable.o `test -f 'mixer_clickable.c' || echo '$(srcdir)/'`mixer_clickable.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_clickable.Tpo $(DEPDIR)/alsamixer-mixer_clickable.Po

alsamixer-mixer_clickable.obj: mixer_clickable.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_clickable.obj -MD -MP -MF $(DEPDIR)/alsamixer-mixer_clickable.Tpo -c -o alsamixer-mixer_clickable.obj `if test -f 'mixer_clickable.c'; then $(CYGPATH_W) 'mixer_clickable.c'; else $(CYGPATH_W) '$(srcdir)/mixer_clickable.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_clickable.Tpo $(DEPDIR)/alsamixer-mixer_clickable.Po

alsamixer-mixer_controls.o: mixer_controls.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_controls.o -MD -MP -MF $(DEPDIR)/alsamixer-mixer_controls.Tpo -c -o alsamixer-mixer_controls.o `test -f 'mixer_controls.c' || echo '$(srcdir)/'`mixer_controls.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_controls.Tpo $(DEPDIR)/alsamixer-mixer_controls.Po

alsamixer-mixer_controls.obj: mixer_controls.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_controls.obj -MD -MP -MF $(DEPDIR)/alsamixer-mixer_controls.Tpo -c -o alsamixer-mixer_controls.obj `if test -f 'mixer_controls.c'; then $(CYGPATH_W) 'mixer_controls.c'; else $(CYGPATH_W) '$(srcdir)/mixer_controls.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_controls.Tpo $(DEPDIR)/alsamixer-mixer_controls.Po

alsamixer-mixer_display.o: mixer_display.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_display.o -MD -MP -MF $(DEPDIR)/alsamixer-mixer_display.Tpo -c -o alsamixer-mixer_display.o `test -f 'mixer_display.c' || echo '$(srcdir)/'`mixer_display.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_display.Tpo $(DEPDIR)/alsamixer-mixer_display.Po

alsamixer-mixer_display.obj: mixer_display.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_display.obj -MD -MP -MF $(DEPDIR)/alsamixer-mixer_display.Tpo -c -o alsamixer-mixer_display.obj `if test -f 'mixer_display.c'; then $(CYGPATH_W) 'mixer_display.c'; else $(CYGPATH_W) '$(srcdir)/mixer_display.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_display.Tpo $(DEPDIR)/alsamixer-mixer_display.Po

alsamixer-mixer_widget.o: mixer_widget.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_widget.o -MD -MP -MF $(DEPDIR)/alsamixer-mixer_widget.Tpo -c -o alsamixer-mixer_widget.o `test -f 'mixer_widget.c' || echo '$(srcdir)/'`mixer_widget.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_widget.Tpo $(DEPDIR)/alsamixer-mixer_widget.Po

alsamixer-mixer_widget.obj: mixer_widget.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-mixer_widget.obj -MD -MP -MF $(DEPDIR)/alsamixer-mixer_widget.Tpo -c -o alsamixer-mixer_widget.obj `if test -f 'mixer_widget.c'; then $(CYGPATH_W) 'mixer_widget.c'; else $(CYGPATH_W) '$(srcdir)/mixer_widget.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-mixer_widget.Tpo $(DEPDIR)/alsamixer-mixer_widget.Po

alsamixer-proc_files.o: proc_files.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-proc_files.o -MD -MP -MF $(DEPDIR)/alsamixer-proc_files.Tpo -c -o alsamixer-proc_files.o `test -f 'proc_files.c' || echo '$(srcdir)/'`proc_files.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-proc_files.Tpo $(DEPDIR)/alsamixer-proc_files.Po

alsamixer-proc_files.obj: proc_files.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-proc_files.obj -MD -MP -MF $(DEPDIR)/alsamixer-proc_files.Tpo -c -o alsamixer-proc_files.obj `if test -f 'proc_files.c'; then $(CYGPATH_W) 'proc_files.c'; else $(CYGPATH_W) '$(srcdir)/proc_files.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-proc_files.Tpo $(DEPDIR)/alsamixer-proc_files.Po

alsamixer-textbox.o: textbox.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-textbox.o -MD -MP -MF $(DEPDIR)/alsamixer-textbox.Tpo -c -o alsamixer-textbox.o `test -f 'textbox.c' || echo '$(srcdir)/'`textbox.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-textbox.Tpo $(DEPDIR)/alsamixer-textbox.Po

alsamixer-textbox.obj: textbox.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-textbox.obj -MD -MP -MF $(DEPDIR)/alsamixer-textbox.Tpo -c -o alsamixer-textbox.obj `if test -f 'textbox.c'; then $(CYGPATH_W) 'textbox.c'; else $(CYGPATH_W) '$(srcdir)/textbox.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-textbox.Tpo $(DEPDIR)/alsamixer-textbox.Po

alsamixer-utils.o: utils.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-utils.o -MD -MP -MF $(DEPDIR)/alsamixer-utils.Tpo -c -o alsamixer-utils.o `test -f 'utils.c' || echo '$(srcdir)/'`utils.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-utils.Tpo $(DEPDIR)/alsamixer-utils.Po

alsamixer-utils.obj: utils.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-utils.obj -MD -MP -MF $(DEPDIR)/alsamixer-utils.Tpo -c -o alsamixer-utils.obj `if test -f 'utils.c'; then $(CYGPATH_W) 'utils.c'; else $(CYGPATH_W) '$(srcdir)/utils.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-utils.Tpo $(DEPDIR)/alsamixer-utils.Po

alsamixer-volume_mapping.o: volume_mapping.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-volume_mapping.o -MD -MP -MF $(DEPDIR)/alsamixer-volume_mapping.Tpo -c -o alsamixer-volume_mapping.o `test -f 'volume_mapping.c' || echo '$(srcdir)/'`volume_mapping.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-volume_mapping.Tpo $(DEPDIR)/alsamixer-volume_mapping.Po

alsamixer-volume_mapping.obj: volume_mapping.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-volume_mapping.obj -MD -MP -MF $(DEPDIR)/alsamixer-volume_mapping.Tpo -c -o alsamixer-volume_mapping.obj `if test -f 'volume_mapping.c'; then $(CYGPATH_W) 'volume_mapping.c'; else $(CYGPATH_W) '$(srcdir)/volume_mapping.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-volume_mapping.Tpo $(DEPDIR)/alsamixer-volume_mapping.Po

alsamixer-widget.o: widget.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-widget.o -MD -MP -MF $(DEPDIR)/alsamixer-widget.Tpo -c -o alsamixer-widget.o `test -f 'widget.c' || echo '$(srcdir)/'`widget.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-widget.Tpo $(DEPDIR)/alsamixer-widget.Po

alsamixer-widget.obj: widget.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(alsamixer_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT alsamixer-widget.obj -MD -MP -MF $(DEPDIR)/alsamixer-widget.Tpo -c -o alsamixer-widget.obj `if test -f 'widget.c'; then $(CYGPATH_W) 'widget.c'; else $(CYGPATH_W) '$(srcdir)/widget.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/alsamixer-widget.Tpo $(DEPDIR)/alsamixer-widget.Po

install: Makefile $(PROGRAMS) $(MANS)
	@$(MAKE) $(AM_MAKEFLAGS) install-binPROGRAMS
	cp -f $(MANUAL) $(MAN)/$(MANUAL)

clean:
	rm -rf *.o
	rm -rf $(BINARY)

uninstall: clean
	rm -rf $(BIN)/$(BINARY)
	rm -rf $(MAN)/$(MANUAL)

.PHONY: all all-am am--depfiles clean \
	install \
	install-binPROGRAMS install-data \
	install-exec install-exec-am \
	uninstall
