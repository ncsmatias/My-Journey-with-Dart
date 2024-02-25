void main(List<String> args) {
  /* 
    Em Dart, num é um tipo de dado que representa números numéricos. 
    Ele é uma abstração que inclui tanto inteiros quanto números de ponto flutuante. 
  */
  num pi = 3.141592653589793;

  print('Valor de pi: $pi');

  // Arredondamento e Truncamento
  num floor = pi.floor(); // Arredonda o valor fracionário
  print('Valor de floor: $floor');

  num round = pi.round(); // Arredonda para o inteiro mais próximo
  print('Valor de round: $round');

  num ceil = pi.ceil(); // Arredonda para o inteiro maior mais próximo
  print('Valor de ceil: $ceil');

  num truncatePi = pi
      .truncate(); // Trunca pi, removendo a parte decimal e deixando apenas a parte inteira.
  print(truncatePi);

  // Limitação de Valores
  num clamp = pi.clamp(3, 3.1);
  print('Valor de clamp: $clamp');

  /*
    Se o valor de pi estiver dentro desse intervalo, o resultado será o próprio valor de pi. 
    Se estiver abaixo de 3, o resultado será 3, e se estiver acima de 3.1, o resultado será 3.1.

    O objetivo do método clamp é garantir que um valor fique dentro de um intervalo específico, 
    evitando valores que sejam menores que o mínimo ou maiores que o máximo.
  */

  // Comparação de Números
  num compareTo = pi.compareTo(3);
  print('Valor de compareTo: $compareTo');

  /*
    O método compareTo compara o valor de 'pi' com 3, retornando:
    Número positivo se 'pi' for maior que 3, 0 se 'pi' for igual a 3 ou número negativo se 'pi' for menor que 3.
  */

  // Resto da Divisão
  num remainder = pi.remainder(3);
  print('Valor de remainder: $remainder');

  /*
    O valor de pi é dividido por 3. remainder receberá o valor do resto dessa divisão.
  */

  // Conversões de Tipo
  int intPi;
  intPi = pi.toInt(); // Converte pi para um numero do tipo inteiro
  print('Valor de intPi: $intPi');

  int height = 33;
  double heightDouble;

  heightDouble = height
      .toDouble(); // Converte height para um numero do tipo ponto flutuante
  print('Valor de heightDouble: $heightDouble');

  // Representação de String
  String stringPi = pi.toString(); // Converte pi para uma string
  print('Valor de stringPi: $stringPi');

  String stringPiAsFixed = pi.toStringAsFixed(
      4); // Converte pi em uma string com exatamente 4 casas decimais.
  print('Valor de stringPiAsFixed: $stringPiAsFixed');

  // Verificação de Propriedades
  bool isNegative = pi
      .isNegative; // Retorna true se o valor é negativo ou false, caso contrário
  print('Valor de isNegative: $isNegative');

  bool isInfinite = pi
      .isInfinite; // Retorna true se o valor é infinito ou false, caso contrário
  print('Valor de isInfinite: $isInfinite');

  bool isFinite =
      pi.isFinite; // Retorna true se o valor é finitp ou false, caso contrário
  print('Valor de isFinite: $isFinite');

  num gdc = 12.gcd(4); // Retorna o máximo divisor comum
  print('Valor de gdc: $gdc');

  // Métodos do tipo String

  String string1 = 'Uma String Qualquer';
  String string2 = '\t Outra Uma String Qualquer';

  String stringToLowerCase = string1
      .toLowerCase(); // Converte os caracteres de uma string em letras minusculas
  print('Valor de stringToLowerCase: $stringToLowerCase');

  String stringToUpperCase = string1
      .toUpperCase(); // Converte os caracteres de uma string em letras MAIÚSCULAS
  print('Valor de stringToUpperCase: $stringToUpperCase');

  String stringTrim = string2
      .trim(); // Remove espaços em branco (como espaços, tabulações e quebras de linha) do início e do final de uma string.
  print('Valor de stringTrim: $stringTrim');

  var stringSplit = string2.split(
      ' '); // divide uma string em uma lista de substrings com base em um delimitador específico. [	, Outra, Uma, String, Qualquer]
  print('Valor de stringSplit: $stringSplit');

  stringSplit = string1
      .split(''); // [U, m, a,  , S, t, r, i, n, g,  , Q, u, a, l, q, u, e, r]
  print('Novo valor de stringSplit: $stringSplit');

  String stringSubstring = string1.substring(
      3, 8); // Retorna uma substring no intervalo especificado. Stri
  print('Valor de stringSubstring: $stringSubstring');

  bool stringStartWith = string1.startsWith(
      'Uma'); // Retorna true se começa com uma substring específicada ou false, caso contrário
  print('O valor de stringStartWith: $stringStartWith');

  stringStartWith = string2.startsWith('Uma',
      8); // Retorna true se começa com uma substring e index inicial específicados ou false, caso contrário
  print('Outro valor de stringStartWith: $stringStartWith');

  bool stringEndsWith = string1.endsWith(
      'Qualquer'); // Retorna true se a string termina com a substring especificada ou false, caso contrário
  print('Valor de stringEndsWith: $stringEndsWith');

  String stringReplaceAll = string1.replaceAll('a',
      'Z'); // Retorna uma nova string trocando todos as substrings do primeiro argumento por outro específicado no segundo argumento
  print('Valor de stringReplaceAll: $stringReplaceAll');

  String stringReplaceFirst = string1.replaceFirst('a',
      'Z'); // Retorna uma nova string trocando a primeira ocorrência de uma substring do primeiro argumento por
  // outro específicado no segundo argumento
  print('Valor de stringReplaceFirst: $stringReplaceFirst');

  stringReplaceFirst = string1.replaceFirst('a', 'Z',
      4); // Retorna uma nova string trocando a primeira ocorrência de uma substring do primeiro argumento por
  //outro específicado no segundo argumento, com o inicio sendo o valor do terceiro argumento
  print('Outro valor de stringReplaceFirst: $stringReplaceFirst');

  String stringReplaceRange = string1.replaceRange(0, 4,
      ''); // Retorna uma nova string com a substituição dos caracteres definido por um intervalo
  print('Valor de stringReplaceRange: $stringReplaceRange');

  bool stringContains = string1.contains(
      'Qualquer'); // Retorna true se a string contêm uma substring ou false, caso cantrário
  print('Valor de stringContains: $stringContains');

  stringContains = string1.contains('Uma',
      4); // Retorna true se a string contêm uma substring no indice inicial especificado ou false, caso cantrário
  print('Outro valor de stringContains: $stringContains');

  int stringIndexOf = string1.indexOf(
      'Qualquer'); // Retorna a posição da primeira ocorrência de uma substring em uma string.
  // Ele retorna um inteiro representando a posição do início da substring, ou -1 se a substring não for encontrada.
  print('Valor de stringIndexOf: $stringIndexOf');

  int stringLastIndexOf = string1.lastIndexOf(
      'a'); // Retorna o indice da ultima ocorrencia da substring especificada
  print('Valor de stringLastIndexOf: $stringLastIndexOf');

  int stringLength = string1.length;
  print('Valor de stringLength: $stringLength'); // Retorna o tamanho da string

  bool stringIsEmpty = string1
      .isEmpty; // Retorna true se a string é vazia ou false, caso contrário
  print('Valor de stringIsEmpty: $stringIsEmpty');

  int stringCompareTo = string1.compareTo('Ama String Qualquer');
  print('Valor de stringCompareTo: $stringCompareTo');

  /*
    Retorna um número negativo se string1 preceder lexicograficamente a string fornecida.
    Retorna 0 se as duas strings forem iguais lexicograficamente.
    Retorna um número positivo se string1 suceder lexicograficamente a string fornecida.
  */

  String stringEuler = '2.7182818';

  double eulerDouble =
      double.parse(stringEuler); // Converte uma string para o tipo double
  print('Valor de eulerDouble: $eulerDouble');

  String stringAge = '33';

  int ageInt = int.parse(stringAge); // Converte uma string para o tipo int
  print('Valor de ageInt: $ageInt');

  String hours = '1:50';

  String pricePadLeft = hours.padLeft(5, '0');
  print('Valor de pricePadLeft: $pricePadLeft');
}
