#!/bin/bash

# Die gewuenschte Obergrenze fuer den Primzahltest
# ist das zweite Argument des folgenden
# 'seq'-Befehls:
seq 3 2 10000 > daten_tmp.txt

./prime.py daten_tmp.txt

# Loesche die temporaere, nicht mehr benoetigte,
# Datentabelle wieder:
rm daten_tmp.txt
