# loop example
$employees = ['ram', 'shyam', 'mohan']
$employees.each |String $employee| {
  user {$employee:
    ensure => present,
  }
}
