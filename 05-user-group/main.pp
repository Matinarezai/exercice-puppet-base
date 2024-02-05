user { 'example_user':
  ensure     => 'present',   # You can also use 'absent' to ensure the user is removed
  uid        => 1001,        # Specify the desired UID
  gid        => 'example_group',  # Specify the primary group
  home       => '/home/example_user',  # Specify the home directory
  shell      => '/bin/bash',  # Specify the login shell
  managehome => true,         # Manage home directory (create or remove)
}
