#!/bin/bash
#Control paràmetres
if [ $# -ne 1 ]; then
	echo "Nombre d'arguments incorrecte, el programa només espera 1 argument: nom_directori"
exit 1
fi
#comprovar directori
if [ -d $1 ]; then
	echo "El contingut del directori $1 és: "
	ls $1
else
	echo "$1 no es un directori :("
fi
exit 0

