#!/bin/bash

# Directori base
directori_inicial="/home"

# Ls a home
for directory in "$directori_inicial"/*; do
  # Comprova si  és un directori
  if [ -d "$directory" ]; then
    # Calcular ocupació del directori i mostrar
    echo "Ocupació de disc de $directory:"
    du -sh "$directory"
  fi
done
