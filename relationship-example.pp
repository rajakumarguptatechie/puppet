# Relationship parameter example
file {'/var/tmp/y':
  ensure  => file,
  require => File['/var/tmp/x'],
}
file {'/var/tmp/x':
  ensure => file,
}

