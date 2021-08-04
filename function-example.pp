# Function syntax (written in ruby)
Puppet::Functions.create_function(:<function-name>) do
  write-your-code
done

# Function example
$my_arr = [1, 2, 3,  4, 5]
$my_arr.each |$my_var| {
  notice("$my_var")
}
$my_arr.reverse_each |$my_var| {
  notice("$my_var")
}
