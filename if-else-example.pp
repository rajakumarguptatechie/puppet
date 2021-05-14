## Puppet DSl examples
# if-else example
if $facts['is_virtual'] {
  notify{'This is a virtual machine':}
} elsif $facts['os']['family'] == 'Darwin' {
  notify{'This is a Mac machine and we do not support it':}
} else {
  notify{'No condition is met':}
}
