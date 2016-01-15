#!/bin/bash

# Behandle Signale, vor allem ein 'kill': Hier geben wir
# nur eine Meldung aus dass wir uns beenden muessen. Eine
# echte Anwendung könnte hier temporäre Dateien schliessen, etc.

trap "echo 'Ja, ja, ich beende mich ja schon .....'; exit 1" INT

# Die folgende Schleife realisiert einen Countdown von zehn
# Nach null:
i=10
while [ ${i} -ge 0 ]
do
  echo "Die Variable 'i' hat jetzt den Wert ${i}"  

  i=$((i-1))
done 

echo
echo "Mit dem Erreichen des Wertes 0 fuer die Varibale 'i'"
echo "ist dieses Skript beendet."

# und Ende
exit 0;
