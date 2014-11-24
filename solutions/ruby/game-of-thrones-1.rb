def has_palindrome(string)
  letters = string.chars
  temp_array = [];
  letters.each { |letter| temp_array.include?(letter) ? temp_array.delete(letter) : temp_array.push(letter) }

  temp_array.size > 1 ? "NO" : "YES"
end

p has_palindrome("aaabbbb");
p has_palindrome("cdefghmnopqrstuvw");
p has_palindrome("cdcdcdcdeeeef");


