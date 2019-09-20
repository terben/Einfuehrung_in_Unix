#!/bin/bash

# Die gewuenschte Obergrenze fuer den
# Primzahltest wird hier als Argument
# uebergeben:
OBER=${1}

# Die Variable(!) '$' enthaelt die PID des
# Skript-Prozesses und ist sehr gut fuer
# eindeutige Dateinamen geeignet!
seq 3 2 ${OBER} > daten_tmp.txt_${$}

./prime.py daten_tmp.txt_${$}

# Loesche die temporaere, nicht mehr benoetigte,
# Datentabelle wieder:
rm *_${$}
