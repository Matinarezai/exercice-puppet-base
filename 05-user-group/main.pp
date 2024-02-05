# Définition de l'utilisateur
user { 'c2c':
  ensure     => 'present',     # Assure que l'utilisateur existe
  managehome => true,          # Gère également le répertoire personnel de l'utilisateur
  uid        => '1001',        # UID de l'utilisateur
  gid        => 'users',       # GID de l'utilisateur (groupe)
  home       => '/home/c2c',  # Chemin du répertoire personnel
  shell      => '/bin/bash',    # Shell de l'utilisateur
  password   => 'qwertz',  # Mot de passe chiffré (utilisez 'openssl passwd -1' pour générer)
}

# Vous pouvez également ajouter d'autres configurations ou exécutions de commandes en fonction de vos besoins.

