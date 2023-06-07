#!/bin/sh
# Run this to generate all the initial makefiles, etc.

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.
export ACLOCAL_PATH="$srcdir/macros2"
REQUIRED_AUTOMAKE_VERSION=1.9

(test -f $srcdir/configure.ac \
## put other tests here
) || {
    echo -n "**Error**: Directory "\`$srcdir\'" does not look like the"
    echo " top-level $PKG_NAME directory"
    exit 1
}

. $srcdir/macros2/gnome-autogen.sh
