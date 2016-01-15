#!/bin/bash

# Behandle Signale, vor allem ein 'kill': Hier geben wir
# nur eine Meldung aus dass wir uns beenden muessen. Eine
# echte Anwendung könnte hier temporäre Dateien schliessen, etc.
trap "echo 'Ja, ja, ich beende mich ja schon .....'; exit 1" INT EXIT

# Die folgende Schleife 'soll' von einen Countdown von zehn
# Nach null realisieren:
i=10
while [ ${i} -ge 0 ]
do
  echo "Die Variable 'i' hat jetzt den Wert ${i}"  

  # Wahrscheinlich wollte der Programmierer hier ein '-' statt
  # einem '+':
  i=$((i+1))

  # eine Sekunde nach jeder Iteration warten; sonst
  # wird es zuviel output :-)
  sleep 1 
done 

echo
echo "Mit dem Erreichen des Wertes 0 fuer die Varibale 'i'"
echo "ist dieses Skript beendet."

# und Ende
exit 0;
