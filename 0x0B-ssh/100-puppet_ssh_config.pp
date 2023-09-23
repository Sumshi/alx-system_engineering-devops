#!/usr/bin/env bash
# Using Puppet to change our server configuration files
# Configure SSH to use the private key ~/.ssh/school for authentication
file { '/etc/ssh/ssh_config':
  ensure  => present,
  content =>"
          host*
          IdentityFile ~/.ssh/school
          PasswordAuthentication no"
}