#!/bin/bash

# Demanar els dos valors
#echo "Introdueix el primer valor:"
#read valor1
#echo "Introdueix el segon valor:"
#read valor2

#definició variables


# Demanar l'operació
#echo "Introdueix l'operació (+, -, x, /):"
#read operacio

# Realitzar l'operació corresponent
case $3 in
    +)
        resultat=$(($1 + $2))
        ;;
    -)
        resultat=$(($1 - $2))
        ;;
    x)
        resultat=$(($1 * $2))
        ;;
    /)
        if [ $2 -ne 0 ]; then
            resultat=$(($1 / $2))
        else
            echo "Error: No es pot dividir per zero."
            exit 1
        fi
        ;;
    *)
        echo "Operació no vàlida. Utilitza +, -, x o /."
        exit 1
        ;;
esac

# Mostrar el resultat
echo $resultat
