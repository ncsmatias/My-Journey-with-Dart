void main(List<String> args) {
  num counter = 0;

  // While é uma estrutura que permite repetir uma determinada instrução
  // enquanto a condição for avaliada como true

  while (counter <= 10) {
    print('Valor de counter: $counter');
    counter++;
  }

  // O while verifica a condição antes de iniciar a execução
  counter = 0;
  while (counter >= 10) {
    // Condição avaliada como falso
    print('Esse código não irá ser executado');
    counter++;
  }

  // O laço do...while também é uma estrutura que permite a execução repetidas de um código
  // mas a avaliação da condição é feita ao final

  counter = 0;
  do {
    print('Valor de counter: $counter');
    counter++;
  } while (counter >= 10);

  // O laço do...while executará pelo menos uma vez

  // Utilizando a instrução break

  // break interrompe a execução do while independendo do valor da condição

  counter = 0;
  while (counter <= 10) {
    print('Valor de counter: $counter');

    if (counter == 5) {
      print('Interrompe a execução do while');
      break;
    }

    counter++;
  }
}
