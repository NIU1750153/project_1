#Lidia Panosa Gutiérrez (1750153)
#Fonaments d'Enginyeria 24-25
#UAB
#Lliurament Problemes 2- PAUL/432

#SCRIPT:- mostrar el vostre nom per pantalla;
#- crear un fitxer anomenat dades.txt amb el contingut del fitxer /etc/passwd;
#- Crear un fitxer anomenat paraules el qual tindrà tantes línies com el valor introduït com argument al script. És a dir, les línies a processar són des de la
#primera línia del fitxer dades.txt a la línia el valor del qual s’ha introduït com argument al script. Cada línia del fitxer paraules tindrà tants camps com camps tenen les línies
#del fitxer dades.txt. El valor de cada camp del fitxer paraules serà el nombre de caràcters del camp corresponent a la línia del fitxer dades.txt.


#!/bin/bash

echo -e  "Lidia Panosa Gutierrez\n" #Mostrar el meu nom echo -e per caracters descapament \e (salt de linia)

cp /etc/passwd dades.txt #Crear el fitxer dades.txt copiant el contingut de /etc/passwd

echo "" > paraules #Crear o borrar el fitxer paraules

head -n $1 dades.txt | while read linia #Llegeix les linies de dades.txt fins largument
do
  resultat="" #Inicialitza la variable resultat per anar guardant les longituds dels camps de linia

  camp_num=1 #Inicialitza el numero de camp

  while [ $camp_num -le 7 ]; do #Bucle per processar tots els camps del 1 al 7

    longitud_camp=`echo $linia | cut -d':' -f$camp_num | wc -c` #Comptar els caracters de cada camp (cut --> Extreure el camp, wc -c --> Comptar el camp)

    longitud_camp=$((longitud_camp - 1)) #Restem 1 a la longitud del camp perque wc conta tambe el salt de linia

    if [ $camp_num -eq 1 ]; then #Si es el primer camp escribim el nombre tal cual.
      resultat="$longitud_camp"
    else
      resultat="$resultat:$longitud_camp" #Si no es el primer camp afegir separador
    fi

    camp_num=$((camp_num + 1)) #Incrementa nombre de camp
  done

  echo "$resultat" >> paraules #Escriu el resultat al fitxer paraules
done

echo "Es mostrara el fitxer paraules:"
cat paraules #Mostrar per pantalla el fitxer paraules
