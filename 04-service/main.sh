#!/bin/bash
echo "##########################"
echo "# Configuration d'Apache #"
echo "##########################"


echo ">>> Mise à jour de la liste des paquets disponibles"
sudo apt update
echo ">>> Installation d'Apache"
sudo apt install -y apache2


echo ">>> Démarrage d'Apache"
sudo systemctl start apache2


echo ">>> Configuration d'Apache pour démarrer automatiquement au démarrage du système"
sudo systemctl enable apache2


echo ">>> Configuration du firewall pour autoriser le trafic HTTP"
sudo ufw allow 'Apache Full'


echo ">>> Vérification du statut d'Apache"
sudo systemctl status apache2


echo ">>> Redémarrage d'Apache pour prendre en compte les modifications de configuration"
sudo systemctl restart apache2

echo ">>> Configuration terminée avec succès"
