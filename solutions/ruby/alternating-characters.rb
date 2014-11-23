require 'pry'

def delete_letters(string)
  number_of_deletes = 0
  string = string.chars
  current_char = string[0]

  string.each_cons(2) do |char, next_char|
    if current_char != next_char
      current_char = next_char
    elsif current_char == next_char
      number_of_deletes += 1
      current_char = char
    end
  end

  number_of_deletes
end

p delete_letters('AAAA') === 3
p delete_letters('BBBBB') === 4
p delete_letters('ABABABAB') === 0
p delete_letters('BABABA') === 0
p delete_letters('AAABBB') === 4
