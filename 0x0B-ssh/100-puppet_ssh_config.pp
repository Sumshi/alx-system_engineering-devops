# Using Puppet to change our server configuration files
# Configure SSH to use the private key ~/.ssh/school for authentication
file { 'configure using private key':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
  replace => true,
}

# Disable password authentication
file { 'authenticate using a password':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  replace => true,
}