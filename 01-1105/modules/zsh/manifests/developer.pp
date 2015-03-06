# Puppet Labs 01-1105

class zsh::developer inherits zsh {
  File ['/etc/zshrc'] {
    source => 'puppet:///modules/zsh/zshrc.dev'
  }
  include zsh::developer
}

