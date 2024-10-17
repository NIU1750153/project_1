#Lidia Panosa Gutiérrez (1750153)
#Fonaments d'Enginyeria 24-25
#UAB
#Lliurament Problemes 1- PAUL/432

#SCRIPT: Escriure un shell-script que faci el següent:
	# - mostrar el vostre nom per pantalla;
	# - crear un fitxer anomenat input.txt que contingui el contingut del fitxer /etc/passwd;
	# tot seguit, ha de sol·licitar a l’usuari que introdueixi per teclat una cadena de caràcter
	  # mostrant el missatge corresponent per sol·licitar-lo.
	# Amb totes aquestes dades, l’script ha de crear un fitxer nou anomenat output.txt el contingut
	  # del qual sigui el mateix que el de input.txt però on el segon camp de la línia 37 del fitxer
	  # input.txt, s’hagi modificat i correspongui al valor introduït per l’usuari a l’inici de l’script.


#!/bin/bash

echo "Lidia Panosa Gutiérrez" #imprimeix nom

cat /etc/passwd >> input.txt #copia el fitxer /etc/passwd a input.txt

echo -e  "\nEscriu una cadena de caracters:" #Demana cadena de caracters (echo -e = permet llegir caràcters d'escapament)
read cadena_caracters #Llegeix cadena de caracters entrada per l'usuari

linea37=`head -n 37 input.txt | tail -n 1` #selecciona la linia 37 per modificar-la

canviLinia=`echo "$linea37" | cut -d':' -f1`:$cadena_caracters:`echo "$linea37" | cut -d':' -f3-` #canvia el contigut de la línia 37


head -n 36 input.txt > output.txt #copia al fitxer output les línies de la 1 a la 36 del fitxer input
echo "$canviLinia" >> output.txt #copia al fitxer la nova linia 37 canviada
tail -n +38 input.txt >> output.txt #afegeix al fitxer output les demes linies, a partir de la 38

echo -e "\nFitxer output.txt creat amb la modificacio de la linia 37." #mostra missatge de que s'ha creat el fitxer correctament (control errors)

echo -e "\nLinia que s'ha modificat:" #missatge per a l'usuari
echo `diff input.txt output.txt` #mostra la línia que sha modificat perque assegurar-nos que s'ha fet correctament.

