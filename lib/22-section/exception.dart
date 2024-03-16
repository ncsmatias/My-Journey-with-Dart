/*
  * Exception
    - try: Usado para testar uma lógica.
    - catch: Captura erros na lógica try.
    - on: Captura erros específicos e trata no catch.
    - throw Exception: Exceção criada pelo usuário e tratada no catch.
    - finally: É executado ao final do try ou catch
*/

void tryCatch() {
  // Utilizar o try catch quando a exceção for desconhecida

  try {
    num? number;

    number = number! + 10;
  } catch (e) {
    print('Exception: $e');
  }
}

void onClause() {
  // Utilizar on quando a exceção for conhecida

  try {
    int? number;
    number = number! + 10;
  } on TypeError {
    print('Operador de verificação nulo usado em um valor nulo');
  } catch (e) {
    print('Exception: $e');
  }
}

void stackTraceClause() {
  // stackTrace é utilizado para descobrir eventos ocorridos antes da exceção.

  try {
    num? number;

    number = number! + 10;
  } catch (exception, stackTrace) {
    print('Exception: $exception');
    print('stackTrace: $stackTrace');
  }
}

void finallyClause() {
  try {
    num? number;

    number = 10;
  } catch (exception, stackTrace) {
    print('Exception: $exception');
    print('stackTrace: $stackTrace');
  } finally {
    print('finally é executada independente se ocorrer uma exceção ou não');
  }
}

void throwException() {
  var numberList = [1, 3, 5, 7, 8, 9, 11];

  try {
    numberList.forEach((element) {
      if (element % 2 == 0) throw "A lista possuí um elemento par";
    });
  } catch (e) {
    print('Exception: $e');
  }
}

void main(List<String> args) {
  tryCatch();
  onClause();
  stackTraceClause();
  finallyClause();
  throwException();
}
