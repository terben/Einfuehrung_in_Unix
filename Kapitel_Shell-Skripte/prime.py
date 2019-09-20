#!/usr/bin/env python

# Ein Python-Skript, welches Zahlen in einer Textdatei auf die
# Primzahleigenschaft testet.

# Die uebergebene Textdatei (Kommandoargument) enthaelt in jeder Zeile
# einen ganze, positive Zahl. Das Programm gibt die Primzahlen wieder
# auf STDOUT aus.

# Hinweis: das Programm fuehrt keinerlei Tests aus, ob die Eingaben
# gueltig und vernuenftig sind!

from __future__ import print_function
from math import sqrt
from itertools import count, islice
import sys

# Die Funktion 'isPrime' testet, ob eine uebergebene Ganzzahl eine
# Primzahl ist. Falls ja, liefert die Funktion 'True' ansonsten 'False'.
def isPrime(n):
    return n > 1 and all(n%i for i in islice(count(2), int(sqrt(n)-1)))

if len(sys.argv) != 2:
    print("Programmaufruf: %s DATEI_MIT_ZAHLEN" % (sys.argv[0]),
          file=sys.stderr)
    sys.exit(1)

try:
    file = open(sys.argv[1], 'r')
except IOError:
    print("Datei %s existiert nicht!" % (sys.argv[1]), file=sys.stderr)
    sys.exit(1)

for line in file:
    # Ignoriere leere Zeilen:
    if line.strip():
        zahl = int(line)

        if isPrime(zahl):
            print(zahl)
