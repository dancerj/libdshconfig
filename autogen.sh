#!/bin/bash
# autogenerate script

aclocal && libtoolize -c --force && automake --foreign -a -c && autoconf && autoheader

