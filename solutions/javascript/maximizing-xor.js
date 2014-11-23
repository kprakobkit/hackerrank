function maximizingXor(l,r) {
  var max = 0;
  for(var i = l; i <= r; i++) {
    for(var j = l; j <= r; j++) {
      var xOrValue = i ^ j;
      max = xOrValue > max ? xOrValue : max;
    }
  }

  return max
}

console.log(maximizingXor(10,15) === 7);
