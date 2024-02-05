group { 'c2c':
  ensure => 'present',
  gid    => 1001,
}

user { 'c2c':
  ensure     => 'present',
  password   => sensitive('ztrewq'),   
  uid        => 1001,     
  gid        => 'c2c',  # Use the group name, not the GID
  home       => '/home/c2c',  
  shell      => '/bin/bash',
  managehome => true,
}

