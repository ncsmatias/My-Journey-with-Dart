/*
  * JSON
    - JSON é um acrônimo de JavaScript Object Notation, é um formato compacto, 
    de padrão aberto independente, de troca de dados simples e rápida entre sistemas.
  
  * Serialização
    - A serialização é o processo de salvar ou transliterar um objeto em outro em um meio 
    de armazenamento ou transmiti-lo por uma conexão de rede, seja em forma binária ou em 
    formato de texto como o XML ou JSON.
*/

import 'dart:convert';

void decodeAndEncode() {
  String jsonData = '''{
      "id": "123456789",
      "name": "João da Silva",
      "age": 30,
      "email": "joao.silva@example.com",
      "phone": "+55 (11) 91234-5678",
      "address": {
        "street": "Rua das Flores",
        "number": "123",
        "neighborhood": "Centro",
        "city": "São Paulo",
        "state": "SP",
        "zip_code": "01234-567"
      }
    }''';
  // Analisa a string e retorna o objeto Json resultante.
  var parsedJson = json.decode(jsonData);

  print('parsedJson: $parsedJson');

  String name = parsedJson['name'];
  String email = parsedJson['email'];
  String phone = parsedJson['phone'];
  print('Nome: $name, email: $email e telefone: $phone');

  // Converte o objeto em uma string JSON.
  Map<String, dynamic> map = {
    "name": "Fernanda Oliveira",
    "age": 31,
    "country": "USA"
  };

  String encodeJson = json.encode(map);

  print('encodeJson: $encodeJson');
}

class User {
  String id;
  String name;
  String age;
  String email;
  String phone;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.email,
    required this.phone,
  });

  // factory: O método é declarado como uma fábrica, o que significa que ele pode retornar
  //uma nova instância da classe ou uma instância existente.
  // factory User.fromJson(Map<String, dynamic> jsonData) {
  //   return User(
  //     name: jsonData['name'],
  //     age: jsonData['age'],
  //     email: jsonData['email'],
  //     id: jsonData['id'],
  //     phone: jsonData['phone'],
  //   );
  // }

  // Construtor com lista de inicialização, define os parâmetros antes de executar o escopo do construtor
  // User.fromJson(Map<String, dynamic> jsonData)
  //     : name = jsonData['name'],
  //       age = jsonData['age'],
  //       email = jsonData['email'],
  //       id = jsonData['id'],
  //       phone = jsonData['phone'] {}

  // Construtor com lista de inicialização, usa this para passar os parâmetros para o construtor default
  User.fromJson(Map<String, dynamic> jsonData)
      : this(
            name: jsonData['name'],
            age: jsonData['age'],
            email: jsonData['email'],
            id: jsonData['id'],
            phone: jsonData['phone']);

  @override
  String toString() {
    return 'id: $id, name: $name, age: $age, email: $email, phone: $phone';
  }
}

void jsonToObjeto() {
  const Map<String, dynamic> jsonData = {
    "users": [
      {
        "id": "1",
        "name": "Alice",
        "age": "25",
        "email": "alice@example.com",
        "phone": "+55 (11) 98765-4321"
      },
      {
        "id": "2",
        "name": "Bob",
        "age": "30",
        "email": "bob@example.com",
        "phone": "+55 (11) 12345-6789"
      },
      {
        "id": "3",
        "name": "Carol",
        "age": "28",
        "email": "carol@example.com",
        "phone": "+55 (11) 87654-3210"
      },
    ]
  };

  var listUser = jsonData['users'].map((user) => User.fromJson(user)).toList();

  print('listUser: $listUser');
}

void main(List<String> args) {
  decodeAndEncode();
  jsonToObjeto();
}
