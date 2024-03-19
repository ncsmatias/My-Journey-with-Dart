/* 
  * Conceito
    - Streams é um forma de monitorar eventos. Ao adicionar eventos na stream os ouvintes
    são notificados
    - As streams oferecem uma sequência assíncrona de dados. Para processar uma stream use
    await() ou listen()
    - Existem dois tipos de streams:  single subscription (assinatura única) ou broadcast (múltiplas assinaturas).
    -  Um stream é uma sequência de eventos assíncronos. Diferentemente de Future um Stream 
    notifica quando existe um evento pronto.
  
  * Stream
    - Fluxo que a classe StreamController() está gerenciando.
  
  * Add()
    - Adiciona eventos na classe notificando os ouvintes que estão monitorando.
  
  * listen()
    - Inscreve um ouvinte na stream para aguardar notificações de eventos.
      > onData: Notifica o assinante com eventos de dados da stream, se for nulo, nada acontece.
      > onError: Tratamento de eventos com erro e possível rastreamento. Se omitido erros serão considerados como exceptions.
      > onDone: Evento chamado como a stream é fechada.
      > cancelOnError: A assinatura é cancelada automaticante ao receber um evento de erro.
*/

import 'dart:async';
import 'dart:math';

void counter() {
  StreamController<int> controller = StreamController();

  Stream stream = controller.stream;

  StreamSubscription subscription = stream.listen(
    (number) {
      print('(counter) Número aleatório: $number');
    },
    onDone: () => print('(counter) Stream finalizada'),
  );

  Timer.periodic(Duration(seconds: 1), (Timer t) {
    int randomNumber =
        Random().nextInt(100); // Gera um número aleatório entre 0 e 99
    controller.add(randomNumber); // Adiciona o número à stream

    if (t.tick == 10) {
      controller.close();
      t.cancel();
    }
  });
}

void counterWithError() {
  StreamController<int> controller = StreamController();

  Stream stream = controller.stream;

  StreamSubscription subscription = stream.listen(
    (number) {
      print('(counterWithError) Número aleatório: $number');
    },
    onDone: () => print('(counterWithError) Stream finalizada'),
    cancelOnError: false,
    onError: (onError) => print(
        'Error: $onError'), // Se omitido erros serão considerados como exceptions.
  );

  Timer.periodic(Duration(seconds: 1), (Timer t) {
    int randomNumber =
        Random().nextInt(100); // Gera um número aleatório entre 0 e 99
    controller.add(randomNumber); // Adiciona o número à stream

    if (t.tick == 3) {
      controller.addError(() => 'Error intencional');
    }
    if (t.tick == 10) {
      controller.close();
      t.cancel();
    }
  });
}

void broadcast() {
  StreamController<int> controller = StreamController();

  Stream stream = controller.stream
      .asBroadcastStream(); // Para adicionar mais de um ouvinte

  StreamSubscription subscription1 = stream.listen(
    (number) {
      print('(subscription1) Número aleatório: $number');
    },
    onDone: () => print('(subscription1) Stream finalizada'),
    cancelOnError:
        true, // A assinatura é cancelada automaticante ao receber um evento de erro.
    onError: (onError) => print(
        'Error: $onError'), // Se omitido erros serão considerados como exceptions.
  );

  StreamSubscription subscription2 = stream.listen(
    (number) {
      print('(subscription2) Número aleatório: $number');
    },
    onDone: () => print('(subscription2) Stream finalizada'),
    cancelOnError: false,
    onError: (onError) => print(
        'Error: $onError'), // Se omitido erros serão considerados como exceptions.
  );

  Timer.periodic(Duration(seconds: 1), (Timer t) {
    int randomNumber =
        Random().nextInt(100); // Gera um número aleatório entre 0 e 99
    controller.add(randomNumber); // Adiciona o número à stream

    if (t.tick == 3) {
      controller.addError(() => 'Error intencional');
    }

    if (t.tick == 10) {
      controller.close();
      t.cancel();
    }
  });
}

Future<void> methods() async {
  StreamController<int> controller = StreamController();

  Stream stream = controller.stream.asBroadcastStream();

  StreamSubscription subscription =
      stream.where((event) => event % 2 == 0).listen(
    (number) {
      print('(methods) Número aleatório: $number');
    },
    onDone: () => print('(counter) Stream finalizada'),
  );

  stream
      .map((event) => event % 2 != 0 ? 'ímpar: $event' : 'par $event')
      .listen((event) => print(event));

  stream.forEach((element) => print('forEach: $element'));

  stream.take(5).listen((event) => print('Take: $event'));

  stream.skip(7).listen((event) => print('Skip: $event'));

  stream.distinct().listen((event) => print('distinct $event'));

  stream
      .takeWhile((element) => element < 10)
      .listen((event) => print('takeWhile $event'));

  stream
      .skipWhile((element) => element > 10)
      .listen((event) => print('skipWhile $event'));

  Timer.periodic(Duration(seconds: 1), (Timer t) {
    int randomNumber =
        Random().nextInt(100); // Gera um número aleatório entre 0 e 99
    controller.add(randomNumber); // Adiciona o número à stream

    if (t.tick == 10) {
      controller.close();
      t.cancel();
    }
  });
}

void main(List<String> args) async {
  // counter();
  // counterWithError();
  // broadcast();
  await methods();
}
