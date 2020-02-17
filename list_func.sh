#!/bin/bash

varExp="[a-zA-Z_][a-zA-Z0-9_]*"

if [ -n "$1" ]; then
	DIR="$1"
else
	DIR="."
fi

egrep -rohI "$varExp\(($varExp)?( *, *$varExp)*\)" $DIR | egrep -o "^$varExp\(" | egrep -o "^$varExp" | sort -u
