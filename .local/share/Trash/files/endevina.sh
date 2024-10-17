#!/bin/bash

# Número aleatori entre 1 i 6
N=$((1 + RANDOM % 6))
intents=0

# Iniciar el while
while true; do
  # Llegir num usuari
  echo "Endevina el número (1-6): "
  read guess
  ((intents++))

  # Comprovar si l'endevinança és correcta
  if [ "$guess" -eq "$N" ]; then
    echo "Good! :), Has necessitat $intents intents"
    break
  else
    echo "No ho has endevinat :( torna-ho a intentar"
  fi
done
