# Puppet Labs 01-1104

class zsh {
  package { 'zsh':
    ensure => present,
    before => File['/etc/zshrc'],
  }
  file { '/etc/zshrc':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    # The relationship could also be expressed with
    # require => 'puppet:///modules/zsh/zshrc',
    source => 'puppet:///modules/zsh/zshrc',
  }  

  # The relationship could also be expressed with
  # Package['zsh'] -> File['/etc/zshrc']
}

