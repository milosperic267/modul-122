#!/bin/bash
#Random Zahl generieren
randomNumber=$((RANDOM % 20 + 1))

#Für while-Schleife
gerateneZahl=false

#Zähler am Anfang auf 0
zaehler=0

while [ $gerateneZahl != $randomNumber ]; do
  #Zähler erhöhen, um Versuche zu zählen
  ((zaehler = zaehler + 1))
  echo "Geben Sie ein Zahl zwischen 1-20 ein"
  #Zahl auslesen
  read gerateneZahl

  #Prüfen ob gerateneZahl gleich randomNumber ist
  if [ $gerateneZahl == $randomNumber ]; then
    echo "Sie haben die Zahl erraten und haben $zaehler Versuche gebraucht."
    exit
  fi
  #
  if [ $gerateneZahl -gt $randomNumber ]; then
    echo "die gesuchte Zahl ist kleiner als $gerateneZahl"
  else
    echo "Die gesuchte Zahl ist grösser als $gerateneZahl"
  fi

done
