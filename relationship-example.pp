Requirement:
1. config file must be created and then only
2. service should be started

Scenarios:
a. strict usual order
b. override usual order

Relationship meta parameters:

    before: Applies a resource before the target resource.

    require: Applies a resource after the target resource.

    notify: Applies a resource before the target resource. The target resource refreshes if the notifying resource changes.

    subscribe: Applies a resource after the target resource. The subscribing resource refreshes if the target resource changes.

# Examples:
file{'/etc/init.d/abc.conf':
  ensure => present,
  before => Service['abc'] 
}
service{'abc':
  ensure => reload,
  enable => true,
}

file{'/etc/init.d/abc.conf':
  ensure => present,
}
service{'abc':
  ensure  => running,
  enable  => true,
  require => File['/etc/init.d/abc.conf'],
}
