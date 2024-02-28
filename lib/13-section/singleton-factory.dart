/*
  * Singleton
    - É um padrão de projeto para que existe apenas uma instãncia da classe
    - O construtor nomeado privado sem o construtor padrão impede de instanciar a classe
  
  * Factory
    - Construtor factory é usado para manter/retornar a instância original
    - Contrutor factory é capaz de retornar valores
*/

void main(List<String> args) {
  Person person1 = Person();
  print(person1.name);

  Person person2 = Person();
  print(person2.name);

  // person1 e person2 são a mesma instância da classe Person
  person1.name = 'Fernando';
  print(person1.name);
  print(person2.name);

  Person2 person3 = Person2('Murilo', 28);
  print(person3.name);
}

class Person {
  static final Person instance = Person._constructor('none');
  late String name = 'José';

  Person._constructor(this.name);

  factory Person() => instance;
}

class Person2 {
  // ignore: unused_field
  static Person2? _instance;
  String name;
  int age;

  Person2._constructor(this.name, this.age);

  factory Person2(String name, int age) =>
      _instance = Person2._constructor(name, age);
}
