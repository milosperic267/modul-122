#!/bin/bash

#Variable zum Abbruch der While-Schleife definieren
a=0

#While-Loop solange nicht j/n eingegeben wurde
while [ $a -ne 1 ]
do
  echo "Willst du den Download-Folder leeren?(j/n)"

  #Eingabe des Benutzers einlesen
  read answer

  #Prüfen ob Eingabe j/J(Ja) ist
  if [ "$answer" == "j" ] ||  [ "$answer" == "J" ]; then
    echo "Der Download-Ordner wird geleert."
     a=1;

     #In den Downloads-Ordner navigieren
     cd /Users/milosperic/Downloads

     #Alle Datein ohne Nachfrage löschen
     rm -rf *

  #  Prüfen ob Eingabe n/N(Nein) ist
  elif [ "$answer" == "n" ] ||  [ "$answer" == "N" ]; then
      echo "Der Vorgang des Löschens wird abgebrochen"
      a=1;

  #Wenn Eingabe falsch ist wird a nicht auf 1 gesetzt und die While-Schleife wird nochmals durchgeführt7
  else
    echo "Die Eingabe ist falsch. Geben Sie bitte 'j/J' oder 'n/N' ein."
  fi

done



