# Ein einfaches Skript, um die Handhabung von
# Shell-Skript-Argumenten zu demonstrieren:

echo "Das Skript heisst: ${0}"
echo "Dem Skript wurden ${#} Argumente uebergeben"
echo "Das erste Argument ist: ${1}"
echo "Das zweite Argument ist: ${2}"

echo "Hier die Werte aller Argumente:"

for ARG in $@
do
  echo ${ARG}
done

