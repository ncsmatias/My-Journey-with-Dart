/*
  * Síncrono
    - Operações síncronas: Bloqueia a execução até que seja concluída.
    - Funções síncronas: Executa somente operações síncronas.
  
  * Assíncrona
    - Operações assíncronas: Permite executar outras operações enquanto são processadas.
    - Funções assíncronas: Executam ao menos uma operação assíncrona e operações síncronas.

  * Await
    - Indica a espera de uma operação assíncrona.
  
  * Async
    - é usado em toda a função que tenha operações assíncronas.
*/

Future<void> counter() async {
  int seconds = 3;

  await Future.delayed(Duration(seconds: seconds),
      () => print('Deu $seconds s. O método foi finalizado'));
}

void main(List<String> args) async {
  await counter();

  print('Finalizou o programa');
}
