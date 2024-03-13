/*
  * Map
    - Map é um coleção  dinâmica e customizavél de chaves e valores entre {}. As chaves são únicas e os valores
    não se repetem.
*/

void main(List<String> args) {
  // <Tipo da chave, Tipo do valor>
  Map<String, int> cities = {"SJC": 100, "SJRP": 90, "PP": 50};
  print("cities $cities");

  // Convertento uma lista em map
  List<String> namesList = [
    "Juliana",
    "Alice",
    "Matheus",
    "Marcos",
    "Isabelle"
  ];
  Map<int, String> namesMap =
      namesList.asMap(); // O índice vira a chave e o elemento o valor
  print('namesMap $namesMap');

  // Utilizando forEach -> Podemos manipular a chave e o valor de forma independente
  namesMap.forEach((key, value) {
    print('chave: $key -> valor: $value');
  });

  // Intânciando um map
  Map<String, dynamic> fruits = Map();
  print('Map fruits vazio: $fruits');

  // Adicionando um novo valor
  fruits['apple'] = "red";
  print('Map fruits: $fruits');

  // Como a chave já existe o valor é atualizado
  fruits['apple'] = "green";
  print('Map fruits: $fruits');

  // Acessando valores
  print('fruits["apple"]: ${fruits["apple"]}');

  // Métodos específicos do tipo map

  // Verificando se o map possuí um determinada chave
  bool hasKey = fruits.containsKey('apple');
  print('Possuí a chave apple: $hasKey');

  // Verificando se o map possuí um determinado valor
  bool hasValue = fruits.containsValue('greens');
  print('Possuí o valor green: $hasValue');

  // Para acessar um valor basta utilizar as chaves
  String? appleGreen = fruits['apple'];
  print('Valor de appleGreen: $appleGreen');
  // se a chave não existir será retornado null

  Map<String, dynamic> user = {
    "name": "Amelia Brand",
    "age": 30,
    "sex": "F",
    "ocupation": "Professor"
  };

  // Podemos atulizar um valor com o método update
  user.update('age', (age) => age + 1);
  print('user $user');

  // Caso a chave não existe podemos manipula-la mesmo assim com o paramêtro nomeado isAbsent
  user.update('height', (value) => 1.80, ifAbsent: () => null);
  print('user $user');

  // Podemos remover uma determinada chave e valor com o método removeWhere
  user.removeWhere((key, value) => key == 'height' && value == null);
  print('user $user');

  // Podemos atualizar uma chave ou criar caso ela não exista com o método putIfAbsent
  user.putIfAbsent('weight', () => 100);
  print('user $user');

  // Podemos passar um map para ser concatenado a um outro map com o método addAll
  user.addAll({"etinia": "white", "maritalStatus": "single", "children": 0});
  print('user $user');

  // Podemos percorrer um map utilizando loops

  // Utilizando o loop map
  var userLoopMap =
      user.map((key, value) => MapEntry(key, value.toString().toUpperCase()));
  print('user $userLoopMap');

  // Podemos utilizar o forIn para percorrer pelas chaves ou pelos valores
  for (var key in user.keys) {
    print('Chave: $key');
  }

  for (var value in user.values) {
    print('Valor: $value');
  }
}
