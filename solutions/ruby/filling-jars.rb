# Enter your code here. Read input from STDIN. Print output to STDOUT

no_of_jars, no_of_operations = gets.split(' ').map(&:to_i)
total =  no_of_operations.times.inject(0) do |total|
  starting_index, ending_index, no_of_candies = gets.split(' ').map(&:to_i)
  total += (ending_index - starting_index + 1) * no_of_candies
end

puts total/no_of_jars

