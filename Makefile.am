bin_PROGRAMS =  \
	test-dshconfig

INCLUDES = \
	-I$(top_srcdir)

DSHCONFIG_SONAME = 0:0:0

lib_LTLIBRARIES = libdshconfig.la
libdshconfig_la_LDFLAGS = -export-dynamic -version-info $(DSHCONFIG_SONAME)
include_HEADERS = libdshconfig.h
test_dshconfig_SOURCES = test-dshconfig.c
test_dshconfig_LDADD = libdshconfig.la

libdshconfig_la_SOURCES= \
	libdshconfig.c \
	libdshconfig.h 


# Make debian pristine-source
../@PACKAGE@_@VERSION@.orig.tar.gz: 
	if [ ! -f $@ ]; then $(MAKE) distcheck && dch -v "@VERSION@-1" "New upstream version" && mv @PACKAGE@-@VERSION@.tar.gz ../@PACKAGE@_@VERSION@.orig.tar.gz; \
	else \
	rm -f @PACKAGE@-@VERSION@.tar.gz; \
	fi

debiandist: ../@PACKAGE@_@VERSION@.orig.tar.gz

decaton: distcheck
	scp @PACKAGE@-@VERSION@.tar.gz decaton.netfort.gr.jp:public_html/software/downloads
	rm -f @PACKAGE@-@VERSION@.tar.gz
