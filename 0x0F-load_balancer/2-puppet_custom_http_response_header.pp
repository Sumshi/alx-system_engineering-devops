include stdlib
# update packages
exec {  'update server':
command => '/usr/bin/apt-get update',
}

# install nginx
package { 'nginx':
ensure => installed,
}

# basic hello world file
file { '/var/www/html/index.html':
ensure  => present,
content => 'Hello World!',
}

# Configure Nginx so that its HTTP response contains a custom header
file_line { 'add custom header':
ensure => present,
path   => '/etc/nginx/nginx.conf',
line   => "\tadd_header X-Served-By ${hostname};",
match  => '^\\s*add_header X-Served-By',
}

# run or restart nginx
service {'nginx':
ensure  => running,
require => Package['nginx'],
}
