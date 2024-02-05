class user_group {
  $plaintext_password = 'qwertz'

  group { 'c2c':
    ensure => 'present',
    gid    => 1001,
  }

  user { 'c2c':
    ensure     => 'present',
    password   => $plaintext_password,
    uid        => 1001,
    gid        => 'c2c',
    home       => '/home/c2c',
    shell      => '/bin/bash',
    managehome => true,
  }
}

