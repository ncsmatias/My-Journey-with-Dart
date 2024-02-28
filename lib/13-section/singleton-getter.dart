/*
  * Singleton
    - É um padrão de projeto para que existe apenas uma instãncia da classe
    - O construtor nomeado privado sem o construtor padrão impede de instanciar a classe
  
  * Getter
    - A instância é privada e acessada através do Get
*/

void main(List<String> args) {
  print(Person.instance.name);

  // Person person = new Person(); // Erro: A classe 'Person' não possui um construtor sem nome.

  Person.instance.name = 'Fernando';

  print(Person.instance.name);

  Person person1 = Person.instance;
  Person person2 = Person.instance;

  person1.name = 'Maria';
  print(Person.instance.name);

  person2.name = 'Rodrigo';
  print(Person.instance.name);

  // person1 e person2 são a mesma instância da classe Person
}

class Person {
  static final Person _instance = Person._constructor();
  late String name = 'José';

  Person._constructor(); // O construtor padrão da classe é tornado privado, impedindo a criação de novas instâncias diretamente.

  static Person get instance => _instance;
}
