#!/bin/bash

linies=`wc -l < esportistes.csv`

echo "Linias totales = $linies"

suma=0
i=1

while [[ $i -le $linies ]]
do
    edat=`head -$i esportistes.csv | tail -1 | cut -d: -f4`
    echo $edat
    suma=$((suma + edat))
    i=$((i + 1))
done

mitjana=$((suma / linies))
echo "Arrodonint la mitjana $mitjana"

mitjana=`echo "scale=2; $suma / $linies" | bc`
echo "Mitjana = $mitjana"
