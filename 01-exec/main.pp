exec { 'install_Micro':
  command => 'apt-get update && apt-get install -y Micro',
  unless  => 'dpkg -l | grep Micro',
}
