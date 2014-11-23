def convert_to_palindrome(string)
  num_of_ops = 0
  (string.length/2).times do |n|
    num_of_ops += (string[n].ord - string[-(n+1)].ord).abs
  end

  num_of_ops
end

p convert_to_palindrome('abc') == 2
p convert_to_palindrome('abcba') == 0
p convert_to_palindrome('abcd') == 4
