# Loop using each
# each - Repeats a block of code a number of times, using a collection of values to provide different parameters each time.
notice("Output of each example:")
['a','b','c'].each |Integer $index, String $value| {
  notice("${index} = ${value}")
}

# Loop using filter
# filter - Uses a block of code to transform a data structure by removing non-matching elements.
$filtered_array = [1,20,3].filter |$value| { $value < 10 }
notice("Output of filter example:")
notice("${filtered_array}")

# Loop using reduce
# reduce - Uses a block of code to create a new value, or data structure, by combining values from a provided data structure
$sum = reduce([1,2,3]) |$result, $value|  { $result + $value }
notice("Output of reduce example:")
notice("${sum}")

# Loop using with
# with - Evaluates a block of code one time, isolating it in its own local scope. It doesn’t iterate, but has a family resemblance to the iteration functions.
$fruit = with("apples", "oranges", "bananas") |$x, $y, $z| {
notice("Output of with example:")
notice("${x}, ${y}, and ${z}")
}

$hash_as_array = ['key1', 'first value',
                 'key2', 'second value',
                 'key3', 'third value']

$real_hash = $hash_as_array.slice(2).reduce( {} ) |Hash $memo, Array $pair| {
  $memo + $pair
}
notice("Output of slice example:")
notice("${real_hash}")
