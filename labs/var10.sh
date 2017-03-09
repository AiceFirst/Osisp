#!/bin/bash

IFS=$'\n'
ERR_LOG="/tmp/err.log"

exec 6>&2 2>$ERR_LOG

LIST=`find $(readlink -f "$1") -type f -size "+$2c" -size "-$3c"`

for i in $LIST; do
	for j in $LIST; do
		if [[ ! `diff -q "$i" "$j"` && ($i != $j) ]]; then
			echo "$i = $j"
		fi
	done
done

exec 2>&6 6>&-
sed "s/.[a-zA-Z]*:/`basename $0`:/" < $ERR_LOG 1>&2

rm $ERR_LOG

