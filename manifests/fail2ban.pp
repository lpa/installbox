class fail2ban {

  file { '/etc/fail2ban/jail.conf':
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/installbox/fail2ban/jail.conf',
    notify  => Service['fail2ban'],
    require => Package['fail2ban'],
  }

  package { 'fail2ban':
    ensure => present,
  }

  service { 'fail2ban':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => [
      File['jail.conf'],
      Package['fail2ban']
    ],
  }
}
