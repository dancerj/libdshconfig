bin_PROGRAMS =  \
	test-dshconfig

INCLUDES = \
	-I$(top_srcdir)

DSHCONFIG_SONAME = 1:0:0

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

viper: distcheck
	scp @PACKAGE@-@VERSION@.tar.gz viper2.netfort.gr.jp:public_html/software/downloads
	rm -f @PACKAGE@-@VERSION@.tar.gz

mikilab: distcheck
	scp @PACKAGE@-@VERSION@.tar.gz mikilab.doshisha.ac.jp:parallel-research/software
	rm -f @PACKAGE@-@VERSION@.tar.gz

upload-dist-all: distcheck
	scp @PACKAGE@-@VERSION@.tar.gz viper2.netfort.gr.jp:public_html/software/downloads
	scp @PACKAGE@-@VERSION@.tar.gz mikilab.doshisha.ac.jp:parallel-research/software
	$(MAKE) ../@PACKAGE@_@VERSION@.orig.tar.gz
