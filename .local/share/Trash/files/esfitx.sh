#!/bin/bash
if [ -f "$1" ]; then
	echo "$1 és un fitxer regular :)"
else
	echo "$1 no es un fitxer regular :("
fi
exit 0
