# case example
case $facts['os']['name'] {
  'RedHat', 'CentOS':  {
    notify{'This server belong to Redhat family':}
  }
  /^(Debian|Ubuntu)$/:  {
    notify{'This server belong to Debian family':}
  }
  default:  {
    notify{'This server belong neither to Redhat nor Debian family':}
  }
}
