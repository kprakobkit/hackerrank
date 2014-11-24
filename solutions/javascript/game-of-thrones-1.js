function has_palindrome(string) {
  var letters = string.split('');
  var tempArray = [];

  letters.forEach(function(letter){
    if (tempArray.indexOf(letter) > -1) {
      tempArray.splice(tempArray.indexOf(letter), 1);
    } else {
      tempArray.push(letter);
    }
  });

  return tempArray.length > 1 ? "NO" : "YES";
}

console.log(has_palindrome("aaabbbb"));
console.log(has_palindrome("cdefghmnopqrstuvw"));
console.log(has_palindrome("cdcdcdcdeeeef"));
