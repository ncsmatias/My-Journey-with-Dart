void main(List<String> args) {
  Person person = Person('Paulo', 'Silva', 21, 1.80, 100.8);

  person.info();

  // Utilizando o construtor nomeado
  Person person2 = Person.user('Ricardo', 'Ferreira');
  person2.info();
}

class Person {
  late String name;
  late String lastname;
  late int age;
  late double height;
  late double weight;

  // Contrutor sem parâmetro
  // Construtores são iniciados sempre que instânciamos uma class
  // Possuem o mesmo nome da classe
  // Construtor sem parâmetros
  // Todo objeto possuí um construtor, se ele não for declarado é o Dart utiliza
  // o construtor default
  // Person() {}

  // Contrutor com parâmetros
  // Person(String name, String lastname, int age, double height, double weight) {
  //   this.name = name;
  //   this.lastname = lastname;
  //   this.age = age;
  //   this.height = height;
  //   this.weight = weight;
  // }

  // Outra forma de construtor com parâmetros
  Person(this.name, this.lastname, this.age, this.height, this.weight);
  // Dessa forma é mais legível

  // Contrutor nomeado
  Person.user(this.name, this.lastname) {
    age = 0;
    height = 0;
    weight = 0;
  }

  void info() {
    print(
        'nome: $name; sobrenome: $lastname; idade: $age; altura: $height; peso: $weight');
  }
}
