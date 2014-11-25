def find_digits(number)
  digits = number.chars.map(&:to_i)
  total = 0

  digits.reject{ |digit| digit == 0 }.each{ |digit| total += 1 if number.to_i % digit == 0 }

  total
end

p find_digits("12")
p find_digits("1012")
p find_digits("123456789")
p find_digits("114108089")
