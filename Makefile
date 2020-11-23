BINARY=alsamixer
PREFIX=/usr/local
BIN=$(PREFIX)/bin
MAN=$(PREFIX)/share/man/man1/$(BINARY).1

LDFLAGS=

prefix=$(PREFIX)

am__is_gnu_make = { \
  if test -z '$(MAKELEVEL)'; then \
    false; \
  elif test -n '$(MAKE_HOST)'; then \
    true; \
  elif test -n '$(MAKE_VERSION)' && test -n '$(CURDIR)'; then \
    true; \
  else \
    false; \
  fi; \
}
am__make_running_with_option = \
  case $${target_option-} in \
      ?) ;; \
      *) echo "am__make_running_with_option: internal error: invalid" \
              "target option '$${target_option-}' specified" >&2; \
         exit 1;; \
  esac; \
  has_opt=no; \
  sane_makeflags=$$MAKEFLAGS; \
  if $(am__is_gnu_make); then \
    sane_makeflags=$$MFLAGS; \
  else \
    case $$MAKEFLAGS in \
      *\\[\ \	]*) \
        bs=\\; \
        sane_makeflags=`printf '%s\n' "$$MAKEFLAGS" \
          | sed "s/$$bs$$bs[$$bs $$bs	]*//g"`;; \
    esac; \
  fi; \
  skip_next=no; \
  strip_trailopt () \
  { \
    flg=`printf '%s\n' "$$flg" | sed "s/$$1.*$$//"`; \
  }; \
  for flg in $$sane_makeflags; do \
    test $$skip_next = yes && { skip_next=no; continue; }; \
    case $$flg in \
      *=*|--*) continue;; \
        -*I) strip_trailopt 'I'; skip_next=yes;; \
      -*I?*) strip_trailopt 'I';; \
        -*O) strip_trailopt 'O'; skip_next=yes;; \
      -*O?*) strip_trailopt 'O';; \
        -*l) strip_trailopt 'l'; skip_next=yes;; \
      -*l?*) strip_trailopt 'l';; \
      -[dEDm]) skip_next=yes;; \
      -[JT]) skip_next=yes;; \
    esac; \
    case $$flg in \
      *$$target_option*) has_opt=yes; break;; \
    esac; \
  done; \
  test $$has_opt = yes
am__make_dryrun = (target_option=n; $(am__make_running_with_option))
am__make_keepgoing = (target_option=k; $(am__make_running_with_option))
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
install_sh_PROGRAM = $(install_sh) -c
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
build_triplet = x86_64-pc-linux-gnu
host_triplet = x86_64-pc-linux-gnu
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
DIST_COMMON = $(srcdir)/Makefile.am $(am__DIST_COMMON)
mkinstalldirs = $(install_sh) -d
CONFIG_HEADER = $(top_builddir)/include/aconfig.h
CONFIG_CLEAN_VPATH_FILES =
am__installdirs = "$(DESTDIR)$(bindir)" "$(DESTDIR)$(man1dir)"
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
am__maybe_remake_depfiles = depfiles
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
DIST_SOURCES = $(alsamixer_SOURCES)
am__can_run_installinfo = \
  case $$AM_UPDATE_INFO_DIR in \
    n|no|NO) false;; \
  esac
am__vpath_adj_setup = srcdirstrip=`echo "$(srcdir)" | sed 's|.|.|g'`;
am__vpath_adj = case $$p in \
    $(srcdir)/*) f=`echo "$$p" | sed "s|^$$srcdirstrip/||"`;; \
    *) f=$$p;; \
  esac;
am__strip_dir = f=`echo $$p | sed -e 's|^.*/||'`;
am__install_max = 40
am__nobase_strip_setup = \
  srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*|]/\\\\&/g'`
am__nobase_strip = \
  for p in $$list; do echo "$$p"; done | sed -e "s|$$srcdirstrip/||"
am__nobase_list = $(am__nobase_strip_setup); \
  for p in $$list; do echo "$$p $$p"; done | \
  sed "s| $$srcdirstrip/| |;"' / .*\//!s/ .*/ ./; s,\( .*\)/[^/]*$$,\1,' | \
  $(AWK) 'BEGIN { files["."] = "" } { files[$$2] = files[$$2] " " $$1; \
    if (++n[$$2] == $(am__install_max)) \
      { print $$2, files[$$2]; n[$$2] = 0; files[$$2] = "" } } \
    END { for (dir in files) print dir, files[dir] }'
am__base_list = \
  sed '$$!N;$$!N;$$!N;$$!N;$$!N;$$!N;$$!N;s/\n/ /g' | \
  sed '$$!N;$$!N;$$!N;$$!N;s/\n/ /g'
am__uninstall_files_from_dir = { \
  test -z "$$files" \
    || { test ! -d "$$dir" && test ! -f "$$dir" && test ! -r "$$dir"; } \
    || { echo " ( cd '$$dir' && rm -f" $$files ")"; \
         $(am__cd) "$$dir" && rm -f $$files; }; \
  }
man1dir = $(mandir)/man1
NROFF = nroff
MANS = $(man_MANS)
am__tagged_files = $(HEADERS) $(SOURCES) $(TAGS_FILES) $(LISP)
am__uniquify_input = $(AWK) '\
  BEGIN { nonempty = 0; } \
  { items[$$0] = 1; nonempty = 1; } \
  END { if (nonempty) { for (i in items) print i; }; } \
'
am__define_uniq_tagged_files = \
  list='$(am__tagged_files)'; \
  unique=`for i in $$list; do \
    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
  done | $(am__uniquify_input)`
ETAGS = etags
CTAGS = ctags
am__DIST_COMMON = $(srcdir)/Makefile.in $(top_srcdir)/depcomp
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
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
LIBICONV = -liconv
LIBINTL = 
LIBS = -lasound -lm -ldl -lpthread
LN_S = ln -s
LTLIBICONV = -liconv
LTLIBINTL = 
MAKEINFO = ${SHELL} /home/sam/Repos/alsamixer/missing makeinfo
MKDIR_P = /usr/bin/mkdir -p
MSGFMT = /usr/bin/msgfmt
MSGMERGE = /usr/bin/msgmerge
MSGMERGE_FOR_MSGFMT_OPTION = --for-msgfmt
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
xmlto_available = 
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
EXTRA_DIST = alsamixer.1
alsamixer_CPPFLAGS = -I$(top_srcdir)/include
all: all-am

am--refresh:
	echo am--refresh temp

.SUFFIXES:
.SUFFIXES: .c .o .obj
$(srcdir)/Makefile.in:  $(srcdir)/Makefile.am  $(am__configure_deps)

Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)

$(top_srcdir)/configure:  $(am__configure_deps)

$(ACLOCAL_M4):  $(am__aclocal_m4_deps)

$(am__aclocal_m4_deps):
install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
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

distclean-compile:
	-rm -f *.tab.c

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
install-man1: $(man_MANS)
	@$(NORMAL_INSTALL)
	@list1=''; \
	list2='$(man_MANS)'; \
	test -n "$(man1dir)" \
	  && test -n "`echo $$list1$$list2`" \
	  || exit 0; \
	echo " $(MKDIR_P) '$(DESTDIR)$(man1dir)'"; \
	$(MKDIR_P) "$(DESTDIR)$(man1dir)" || exit 1; \
	{ for i in $$list1; do echo "$$i"; done;  \
	if test -n "$$list2"; then \
	  for i in $$list2; do echo "$$i"; done \
	    | sed -n '/\.1[a-z]*$$/p'; \
	fi; \
	} | while read p; do \
	  if test -f $$p; then d=; else d="$(srcdir)/"; fi; \
	  echo "$$d$$p"; echo "$$p"; \
	done | \
	sed -e 'n;s,.*/,,;p;h;s,.*\.,,;s,^[^1][0-9a-z]*$$,1,;x' \
	      -e 's,\.[0-9a-z]*$$,,;$(transform);G;s,\n,.,' | \
	sed 'N;N;s,\n, ,g' | { \
	list=; while read file base inst; do \
	  if test "$$base" = "$$inst"; then list="$$list $$file"; else \
	    echo " $(INSTALL_DATA) '$$file' '$(DESTDIR)$(man1dir)/$$inst'"; \
	    $(INSTALL_DATA) "$$file" "$(DESTDIR)$(man1dir)/$$inst" || exit $$?; \
	  fi; \
	done; \
	for i in $$list; do echo "$$i"; done | $(am__base_list) | \
	while read files; do \
	  test -z "$$files" || { \
	    echo " $(INSTALL_DATA) $$files '$(DESTDIR)$(man1dir)'"; \
	    $(INSTALL_DATA) $$files "$(DESTDIR)$(man1dir)" || exit $$?; }; \
	done; }

ID: $(am__tagged_files)
	$(am__define_uniq_tagged_files); mkid -fID $$unique
tags: tags-am
TAGS: tags

tags-am: $(TAGS_DEPENDENCIES) $(am__tagged_files)
	set x; \
	here=`pwd`; \
	$(am__define_uniq_tagged_files); \
	shift; \
	if test -z "$(ETAGS_ARGS)$$*$$unique"; then :; else \
	  test -n "$$unique" || unique=$$empty_fix; \
	  if test $$# -gt 0; then \
	    $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	      "$$@" $$unique; \
	  else \
	    $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	      $$unique; \
	  fi; \
	fi
ctags: ctags-am

CTAGS: ctags
ctags-am: $(TAGS_DEPENDENCIES) $(am__tagged_files)
	$(am__define_uniq_tagged_files); \
	test -z "$(CTAGS_ARGS)$$unique" \
	  || $(CTAGS) $(CTAGSFLAGS) $(AM_CTAGSFLAGS) $(CTAGS_ARGS) \
	     $$unique

GTAGS:
	here=`$(am__cd) $(top_builddir) && pwd` \
	  && $(am__cd) $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) "$$here"
cscopelist: cscopelist-am

cscopelist-am: $(am__tagged_files)
	list='$(am__tagged_files)'; \
	case "$(srcdir)" in \
	  [\\/]* | ?:[\\/]*) sdir="$(srcdir)" ;; \
	  *) sdir=$(subdir)/$(srcdir) ;; \
	esac; \
	for i in $$list; do \
	  if test -f "$$i"; then \
	    echo "$(subdir)/$$i"; \
	  else \
	    echo "$$sdir/$$i"; \
	  fi; \
	done >> $(top_builddir)/cscope.files

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH tags

distdir: $(BUILT_SOURCES)
	$(MAKE) $(AM_MAKEFLAGS) distdir-am

distdir-am: $(DISTFILES)
	@srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	list='$(DISTFILES)'; \
	  dist_files=`for file in $$list; do echo $$file; done | \
	  sed -e "s|^$$srcdirstrip/||;t" \
	      -e "s|^$$topsrcdirstrip/|$(top_builddir)/|;t"`; \
	case $$dist_files in \
	  */*) $(MKDIR_P) `echo "$$dist_files" | \
			   sed '/\//!d;s|^|$(distdir)/|;s,/[^/]*$$,,' | \
			   sort -u` ;; \
	esac; \
	for file in $$dist_files; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  if test -d $$d/$$file; then \
	    dir=`echo "/$$file" | sed -e 's,/[^/]*$$,,'`; \
	    if test -d "$(distdir)/$$file"; then \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -fpR $(srcdir)/$$file "$(distdir)$$dir" || exit 1; \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    cp -fpR $$d/$$file "$(distdir)$$dir" || exit 1; \
	  else \
	    test -f "$(distdir)/$$file" \
	    || cp -p $$d/$$file "$(distdir)/$$file" \
	    || exit 1; \
	  fi; \
	done

all-am: Makefile $(PROGRAMS) $(MANS)
installdirs:
	for dir in "$(DESTDIR)$(bindir)" "$(DESTDIR)$(man1dir)"; do \
	  test -z "$$dir" || $(MKDIR_P) "$$dir"; \
	done

install: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-man

install-strip:
	if test -z '$(STRIP)'; then \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	      install; \
	else \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	    "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'" install; \
	fi

distclean-generic:
	-test . = "$(srcdir)" || test -z "$(CONFIG_CLEAN_VPATH_FILES)" || rm -f $(CONFIG_CLEAN_VPATH_FILES)

clean:
	rm -rf *.o
	rm -rf alsamixer

install-exec-am: install-binPROGRAMS

install-man: install-man1

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_PROGRAMS)'; test -n "$(bindir)" || list=; \
	files=`for p in $$list; do echo "$$p"; done | \
	  sed -e 'h;s,^.*/,,;s/$(EXEEXT)$$//;$(transform)' \
	      -e 's/$$/$(EXEEXT)/' \
	`; \
	test -n "$$list" || exit 0; \
	echo " ( cd '$(DESTDIR)$(bindir)' && rm -f" $$files ")"; \
	cd "$(DESTDIR)$(bindir)" && rm -f $$files

uninstall-man1:
	@$(NORMAL_UNINSTALL)
	@list=''; test -n "$(man1dir)" || exit 0; \
	files=`{ for i in $$list; do echo "$$i"; done; \
	l2='$(man_MANS)'; for i in $$l2; do echo "$$i"; done | \
	  sed -n '/\.1[a-z]*$$/p'; \
	} | sed -e 's,.*/,,;h;s,.*\.,,;s,^[^1][0-9a-z]*$$,1,;x' \
	      -e 's,\.[0-9a-z]*$$,,;$(transform);G;s,\n,.,'`; \
	dir='$(DESTDIR)$(man1dir)'; $(am__uninstall_files_from_dir)

uninstall: clean
	rm -rf $(BIN)/$(BINARY)
	rm -rf $(MAN)

.MAKE: install-strip

.PHONY: CTAGS GTAGS TAGS all all-am am--depfiles clean \
	cscopelist-am ctags ctags-am \
	distclean distclean-compile distclean-generic distclean-tags \
	distdir info info-am install \
	install-binPROGRAMS install-data \
	install-exec install-exec-am \
	install-man install-man1 \
	install-strip \
	installdirs \
	ps ps-am tags tags-am uninstall \
	uninstall-binPROGRAMS uninstall-man1

.PRECIOUS: Makefile


#LDFLAGS = -static
#CFLAGS += -g -Wall

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
