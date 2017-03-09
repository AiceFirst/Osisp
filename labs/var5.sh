#!/bin/bash

IFS=$'\n'
ERR_LOG="/tmp/err.log"

exec 6>&2 2>$ERR_LOG

find $(readlink -f "$2") -type f -uid $(id -u "$1") -printf "%p %s\n" 1>"$3"

cat "$3" | wc -l

exec 2>&6 6>&-
#sed "s/.[a-zA-Z ]*:/`basename $0`:/" < $ERR_LOG 1>&2

rm $ERR_LOG
