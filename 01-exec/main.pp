exec { 'install_fish':
  command => 'apt update && apt install -y fish',
  unless  => 'dpkg -l | grep fish',
}

test
