#!/bin/bash

# Das Skript startet einfach zwei identische
# Instanzen des prime.py-Skripts, um den Effekt
# eines Mehrkernsystems zu zeigen:

seq 3 2 1000000 > zahlen.txt

./prime.py zahlen.txt > prim1.txt &
./prime.py zahlen.txt > prim2.txt &

# 'Warte' auf alle gestarteten Hintergrundprozesse
wait

echo "Alles fertig!"
