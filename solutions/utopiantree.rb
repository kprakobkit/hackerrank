def grow_tree(cycles)
  starting_height = 1
  return starting_height if cycles <= 0

  cycles.times do |cycle|
    starting_height *= 2 if cycle.even?
    starting_height += 1 if cycle.odd?
  end

  starting_height
end


