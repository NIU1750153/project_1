#!/bin/bash

# Funció per mostrar missatges d'error
mostraError() {
  echo "$0: $*"
  exit 1
}

# Comprova que s'ha entrat un directori per teclat
if [ $# -eq 0 ]; then
  mostraError "El programa esperava un argument nom_directori"
fi

# Itera pels directoris que hi ha en el directori entrat per teclat
for directory in "$@"; do
  # Comprova si el directori existeix
  if [ ! -d "$directory" ]; then
    mostraError "El directori '$directory' no existeix :(."
  fi

  # Calcular ocupació de disc del directori i mostrar
  echo "Ocupació de disc de $directory:"
  du -sh "$directory"
done
