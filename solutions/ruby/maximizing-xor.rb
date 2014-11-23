def maxXor(l,r)
  # (l..r).each do |left_bound|
  #   (l..r).each do |right_bound|
  #     xor_value = left_bound ^ right_bound
  #     max = xor_value > max ? xor_value : max
  #   end
  # end

  (l..r).to_a.combination(2).map {|x,y| x ^ y}.max

end

p maxXor(1,10) == 15
p maxXor(10,15) == 7

