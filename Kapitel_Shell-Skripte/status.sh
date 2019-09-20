#!/bin/bash

# Das Skript gibt einige Status Informationen zu
# unserem Benutzeraccound und der Maschine, auf
# der wir eingeloggt sind.

echo "Hallo ${USER}!"
echo ""     # schreibe eine Leerzeile

# Das Kommando hostname gibt Information über
# die Maschine, auf der man eingeloggt ist.
echo "Sie sind auf $(hostname) eingeloggt."
echo "Ihr Heimatverzeichnis ist: ${HOME}"
echo "Ihr cwd ist $(pwd)"
