#! /bin/sh
#
# $Id: autogen.sh,v 1.16 2009-11-15 20:00:56 al-guest Exp $

set -x

autoreconf -fi

# remove once it comes via config.sub directly
if grep -qv l4re config.sub; then
  perl -p -i -e 's/(\| hcos\* )/$1| l4re* /' config.sub
fi
