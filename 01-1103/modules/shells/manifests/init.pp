class shells {
  file { '/etc/shells/':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/shells/shells',
  }
}

