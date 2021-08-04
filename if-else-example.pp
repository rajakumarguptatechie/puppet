## Puppet DSl examples
# if-else syntax
1. Simple if
if <condition> {
  do-something01
  do-something02
}

2. If-else
if <condition> {
  do-something01
  do-something02
} else {
  do-something01
  do-something02
}

3. If-elsif
if <condition> {
  do-something01
  do-something02
} elsif <condition> {
  do-something01
  do-something02
} else {
  do-something01
  do-something02
}

4. nested condition
if <condition> {
  if <condition> {
    do-something01
    do-something02
  }
  do-something01
  do-something02
}

# if-else example
# Example 01:
if $facts['is_virtual'] {
  notify{'This is a virtual machine':}
} elsif $facts['os']['family'] == 'Darwin' {
  notify{'This is a Mac machine and we do not support it':}
} else {
  notify{'No condition is met':}
}

# Example 02:
$a=5
$b=3
if $a == $b {
  notify{'Both a and b are same':}
} else {
  notify{'a and b are not same':}
}
