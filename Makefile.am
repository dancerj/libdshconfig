
bin_PROGRAMS =  \
	test-dshconfig

INCLUDES = \
	-I$(top_srcdir)

DSHCONFIG_SONAME = 0:0:0

lib_LTLIBRARIES = libdshconfig.la
libdshconfig_la_LDFLAGS = -export-dynamic -version-info $(DSHCONFIG_SONAME)
include_INCLUDE = libdshconfig.h
test_dshconfig_SOURCES = test-dshconfig.c
test_dshconfig_LDADD = libdshconfig.la

libdshconfig_la_SOURCES= \
	libdshconfig.c \
	libdshconfig.h 