#!/bin/bash

trap 'echo Error: $0: stopped; exit 1' ERR INT
set -eu

. $DOTPATH/etc/lib/vital.sh
. $DOTPATH/etc/lib/standard.sh

# This script is
# Mac OS X only!!
is_osx || exit

if is_exist "gorionac"; then
    cd $DOTPATH/etc/init/assets/go
    if [ -f package.yaml ]; then
        gorionac
    fi
fi
