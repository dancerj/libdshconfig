# Process this file with autoconf to produce a configure script.
AC_INIT(libdshconfig, 0.0.20, dancer@debian.org)
AM_INIT_AUTOMAKE(libdshconfig, 0.0.20)
AM_CONFIG_HEADER(config.h)

AC_PROG_LIBTOOL

# Checks for programs.
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_HEADER_STDC
AC_CHECK_HEADERS([stdlib.h string.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_C_CONST

# Checks for library functions.
AC_FUNC_MALLOC
AC_CHECK_FUNCS([strchr strdup getline])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
