/* 
  * Then
    - Registra um callback que será chamado quando Future for concluído.
      > onValue: Valor passado ao termino de Future.
      > catchError: Se omitido é lançado uma exceção.
        > test: Se qualquer lógica retornar true é lançada uma exceção.
      > whenComplete: Chama uma função anônima ao termino do Future.

*/

Future<String> counter() async {
  int seconds = 3;

  return await Future.delayed(
      Duration(seconds: seconds), () => throw 'Retorna um erro intencional');

  // return await Future.delayed(Duration(seconds: seconds),
  //     () => 'Deu $seconds s. O método foi finalizado');
}

void main(List<String> args) async {
  await counter()
      .then((value) => print('Valor retornado pela função counter: $value'))
      .catchError(
        (onError) => print('Algo deu errado: $onError'),
        test: (error) => error.runtimeType == Future,
      )
      .whenComplete(() => print('Finalizou o programa'));
}
