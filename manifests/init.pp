# Class: installbox
#
# This module manages installbox
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class installbox {

  notice('Box install started ...')

  user { 'dave':
    ensure => 'present',
    home   => '/home/dave',
    shell  => '/bin/zsh'
  }

  include fail2ban
  include git
  include nodejs
}

class {'installbox':}