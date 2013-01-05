#!/usr/bin/env sh
# Prints the ostype

#echo $OSTYPE
echo "ⓞ $(uname -s)$(uname -r | cut -d '.' -f 1-2)"

exit 0
