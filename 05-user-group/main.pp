user { 'c2c':
  ensure     => 'present',
  password   => sensitive('ztrewq'),   
  uid        => 1001,     
  gid        => '1001', 
  home       => '/home/c2c',  
  shell      => '/bin/bash',
  managehome => true
}

