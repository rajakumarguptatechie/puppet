# Function example
$my_arr = [1, 2, 3,  4, 5]
$my_arr.each |$my_var| {
  notice("$my_var")
}
$my_arr.reverse_each |$my_var| {
  notice("$my_var")
}
