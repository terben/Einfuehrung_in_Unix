#!/bin/bash

# Dritte Version unseres prime.py-Wrappers.
# Das Skript nutzt einen Mehrkernprozessor und
# erledigt sine Aufgabe mit sovielen parallelen
# Prozessen, wie Kerne verfuegbar sind.

# Die gewuenschte Obergrenzen fuer den Primzahltest
# wird als Argument uebergeben:
OBER=${1}

# Die Anzahl verfuegbarer Kerne auf unserer
# Maschine:
KERNE=$(./ncpus.py)

# Wir muessen die zu testenden Zahlen auf
# KERNE Dateien aufteilen und insgesamt KERNE
# prime.py Prozesse im Hintergrund starten.
seq 3 2 ${OBER} > daten_tmp.txt_${$}

# Die Option '--additional-suffix' erlaubt es,
# and die Namen der Split-dateien noch eine
# Endung anzuheften. Dies tun wir mit der PID:
split -n r/${KERNE} --additional-suffix=_${$} \
  daten_tmp.txt_${$}

# starte die einzelnen prime.py Prozesse:
for DATEI in $(ls xa*_${$})
do
  ./prime.py ${DATEI} > prim_${DATEI} &
done

# Warte bis alle prime.py Hintergrundprozesse
# beendet sind.
wait

# Fuege die einzelnen Ergebnislisten zu einer
# Primzahlliste zusammen:
cat prim*_${$} | sort -n

# Loesche temporaere, nicht mehr benoetigte,
# Dateien wieder:
rm *_${$}
