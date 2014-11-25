# Enter your code here. Read input from STDIN. Print output to STDOUT
#
starting_parameters = gets.split(' ').map(&:to_i)
no_of_operations = starting_parameters[1]
total = 0

no_of_operations.times do
  operation = gets.split(' ').map(&:to_i)
  starting_index = operation[0]
  ending_index = operation[1]
  total += (ending_index - starting_index + 1) * operation[2]
end

puts total/starting_parameters[0]
