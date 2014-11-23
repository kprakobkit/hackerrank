def maxXor(l,r)
  max = 0
  (l..r).each do |left_bound|
    (l..r).each do |right_bound|
      xor_value = left_bound ^ right_bound
      max = xor_value > max ? xor_value : max
    end
  end

  max
end

p maxXor(1,10) == 15
p maxXor(10,15) == 7

