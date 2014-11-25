def find_digits(number)
  digits = number.chars.map(&:to_i)
  result = 0

  digits.each do |digit|
    next if digit == 0
    result += 1 if number.to_i % digit == 0
  end

  result
end

p find_digits("12")
p find_digits("1012")
