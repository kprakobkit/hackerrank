def cut_cake(cake_size)
  vertical_slice = cake_size/2
  horizontal_slice = cake_size - vertical_slice
  horizontal_slice * vertical_slice
end

p cut_cake(5) == 6
p cut_cake(6) == 9
p cut_cake(7) == 12
p cut_cake(8) == 16
