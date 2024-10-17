#!/bin/bash

# Inicialitzar el contador per a les taules
i=1

# Bucle mentre el contador sigui menor o igual a 10
while [ $i -le 10 ]
do
    # Crear el fitxer per la taula actual
    fitxer="taula-del-$i"
    echo " " > $fitxer #Neteja el fitxer per cadac op que executem el fitxer estigui buit.

    # Inicialitzar el contador per a les multiplicacions
    j=0

    # Bucle per generar la taula de multiplicar
    while [ $j -le 10 ]
    do
        echo "$i x $j = $((i * j))" >> "$fitxer"
        j=$((j + 1))  # Incrementar el contador de multiplicació
    done

    i=$((i + 1))  # Incrementar el contador de taules
done

echo "Les taules de multiplicar s'han generat correctament."
