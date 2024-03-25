/*
  * Conceito
    - utf8:
      > Binário que representa qualquer caractere universal
    - Base64:
      > Codificação de dados para transferência na internet
*/

import 'dart:convert';

void main(List<String> args) {
  String text = '''
  Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
  when an unknown printer took a galley of type and scrambled it to make a type specimen book.
  ''';

  List<int> eBytes = utf8.encode(text);
  String encode = base64Encode(eBytes);
  print('Texto codificado: $encode');

  List<int> dBytes = base64Decode(encode);
  String decode = utf8.decode(dBytes);
  print('Texto decodificado: $decode');
}
