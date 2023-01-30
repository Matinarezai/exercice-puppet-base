#!/bin/bash
nombre_secret=$(($RANDOM % 100 + 1))
tentatives=0

echo "Devinez le nombre entre 1 et 100:"

while read -p "Votre devinette: " devinette && [ "$devinette" != "$nombre_secret" ]; do
  if [ "$devinette" -lt "$nombre_secret" ]; then
    echo "C'est plus!"
  else
    echo "C'est moins!"
  fi
  tentatives=$((tentatives + 1))
done

echo "Bravo! Vous avez trouvé le nombre en $tentatives tentatives."
