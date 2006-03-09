#!/bin/sh
#
#   ethna.sh
#
#   simple command line gateway
#
#   $Id$
#

if [ -z "$ETHNA_HOME" ];
then
    ETHNA_HOME="/usr/local/lib/php/Ethna"
fi

if (test -z "$PHP_COMMAND");
then
    export PHP_COMMAND=php
fi

if (test -z "$PHP_CLASSPATH");
then
    PHP_CLASSPATH=$ETHNA_HOME/lib
    export PHP_CLASSPATH
fi

$PHP_COMMAND -d html_errors=off -qC $ETHNA_HOME/bin/ethna_handle.php $*