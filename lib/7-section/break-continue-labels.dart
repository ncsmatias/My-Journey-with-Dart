void main(List<String> args) {
  var sum = 0;
  var amoutEven = 0;

  var matrix = [
    [10, 20, 5],
    [8, 6, 11],
    [7, 3, 5],
    [30, 11, 7]
  ];

  outerLoop:
  for (var indexI = 0; indexI < matrix.length; indexI++) {
    innerLoop:
    for (var indexJ = 0; indexJ < matrix[indexI].length; indexJ++) {
      sum += matrix[indexI][indexJ];
      if (sum >= 35) {
        break outerLoop;
      }
    }
  }

  print('Soma final: $sum');

  // Neste caso J nunca vai ser 2
  outerLoop1:
  for (var indexI = 0; indexI < 2; indexI++) {
    // i = 1
    middleLoop1:
    for (var indexJ = 0; indexJ < 4; indexJ++) {
      // j = 1
      innerLoop1:
      for (var indexK = 0; indexK < 3; indexK++) {
        // k = 0
        print('i: $indexI, j: $indexJ, k: $indexK');
        if (indexJ == 2) {
          print('NUNCA VAI EXECUTAR');
        }

        if (indexJ == 1) break middleLoop1;
      }
    }
  }

  outerLoop2:
  for (var indexI = 0; indexI < matrix.length; indexI++) {
    innerLoop2:
    for (var indexJ = 0; indexJ < matrix[indexI].length; indexJ++) {
      if (matrix[indexI][indexJ] % 2 == 0) {
        amoutEven++;
        continue outerLoop2;
      }
    }
  }

  print('Quantas linhas tem pelo menos 1 número par: $amoutEven');
}
