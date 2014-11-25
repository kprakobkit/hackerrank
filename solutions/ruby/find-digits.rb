def find_digits(number)
  digits = number.chars.map(&:to_i)

  result = digits.reject{ |digit| digit == 0 }.inject(0) { |result, digit| result += 1 if number.to_i % digit == 0 }
end

p find_digits("12")
p find_digits("1012")
