#!/bin/bash

reponses_justes=0

for i in {1..5}; do
  nombre1=$(($RANDOM % 10 + 1))
  nombre2=$(($RANDOM % 10 + 1))
  resultat=$((nombre1 + nombre2))

  echo "Quel est le résultat de $nombre1 + $nombre2 ?"
  read reponse

  if [ "$reponse" == "$resultat" ]; then
    echo "Correct!"
    reponses_justes=$((reponses_justes + 1))
  else
    echo "Incorrect. La réponse correcte est $resultat."
  fi
done

if [ "$reponses_justes" -lt "5" ]; then
  echo "Vous avez perdu! Étendant l'écran pendant 30 secondes."
  xrandr --output eDP1 --auto --right-of HDMI1
  sleep 30
  xrandr --output eDP1 --auto --primary
else
  echo "Félicitations! Vous avez gagné! Étendant l'écran pendant 10 secondes."
  xrandr --output eDP1 --auto --right-of HDMI1
  sleep 10
  xrandr --output eDP1 --auto --primary
fi

