#!/bin/bash
# autogenerate script

libtoolize -c --force && automake --foreign -a -c && aclocal && autoheader && autoconf

