class testfile ( 
  String $ensure_value,
) {

  ## File creation using file resource
  file{'/home/om.prakash/testfile-CreatedViaModule':
    ensure  => $ensure_value,
    content => 'This is to test Module and Hiera of PROD environment',
  }

  ## File creation using module filess
  file {'/var/tmp/test01.conf':
    ensure => $ensure_value,
    source => 'puppet:///modules/testfile/test01.conf', 
  # Loads /etc/puppetlabs/code/environments/production/modules/testfile/files/test01.conf.epp
  }

  ## File creation using module template
  # epp(<FILE REFERENCE>, [<PARAMETER HASH>])
  file { '/var/tmp/test02.conf':
    ensure  => file,
    content => epp('testfile/test02.conf.epp'),
  # Loads /etc/puppetlabs/code/environments/production/modules/testfile/templates/test02.conf.epp
  }

  # template(<FILE REFERENCE>, [<ADDITIONAL FILES>, ...])
  file { '/var/tmp/test03.conf':
    ensure  => file,
    content => template('testfile/test03.conf.erb'),
  # Loads /etc/puppetlabs/code/environments/production/modules/testfile/templates/test03.conf.erb
  }
}
