class user_group {
  $password = file('/path/to/password.txt')

  group { 'c2c':
    ensure => 'present',
    gid    => 1001,
  }

  user { 'c2c':
    ensure     => 'present',
    password   => $password,
    uid        => 1001,
    gid        => 'c2c',
    home       => '/home/c2c',
    shell      => '/bin/bash',
    managehome => true,
  }
}

