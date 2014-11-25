def get_possible_stone_values(no_of_stones, first_incrementer, second_incrementer)
  left_bound = no_of_stones - 1
  end_stone = no_of_stones - 1
  right_bound = 0
  possible_values = []
  while (right_bound <= end_stone) do
    possible_values << (first_incrementer * left_bound + second_incrementer * right_bound)
    left_bound -= 1
    right_bound += 1
  end

  possible_values.reject{|number| number == 0}.sort
end

p get_possible_stone_values(4, 10, 100)




