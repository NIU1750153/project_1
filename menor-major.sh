#!/bin/bash

linies=`wc -l < esportistes.csv`

echo "Línies totals = $linies"
i=1

while [ $i -le $linies ]
do
    nom=`head -$i esportistes.csv | tail -1 | cut -d: -f1`
    cognom=`head -$i esportistes.csv | tail -1 | cut -d: -f2`
    edat=`head -$i esportistes.csv | tail -1 | cut -d: -f4`

    if [ $edat -lt 18 ]
    then
        echo "$nom $cognom té $edat anys i, per tant, és menor d'edat"
    else
        echo "$nom $cognom té $edat anys i, per tant, és major d'edat"
    fi

    i=$((i + 1))
done

