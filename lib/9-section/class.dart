void main(List<String> args) {
  // Instânciando um objeto
  BankAccount bankAccount = new BankAccount();

  bankAccount.name = 'Felipe Rodrigues';
  bankAccount.accountNumber = '1234';
  bankAccount.balance = 10000.23;

  bankAccount.info();

  bankAccount.deposit(2000);

  bankAccount.info();

  bankAccount.withdraw(5000.23);

  bankAccount.info();

  // A palavra-chave new pode ser omitida
  BankAccount bankAccount2 = BankAccount();

  bankAccount2.name = 'Larissa Souza';
  bankAccount2.accountNumber = '195';
  bankAccount2.balance = 9000;

  bankAccount2.info();

  bankAccount2.deposit(5000);

  bankAccount2.info();

  // Operador em cascata
  BankAccount bankAccount3 = BankAccount();
  bankAccount3
    ..name = 'Eduardo Lima'
    ..accountNumber = '198'
    ..balance = 1000
    ..info();
}

// Para criar uma classe em dart utiliza a palavra-chave class
// É uma convenção utilizar letra maiúscula no inicio do nome da classe

class BankAccount {
  // Declarando os atributos (variáveis) da classe
  late String name;
  late String accountNumber;
  late double balance;

  // Declarando os métodos (funções) da classe
  void withdraw(double value) {
    this.balance -= value;
  }

  void deposit(double value) {
    this.balance += value;
  }

  void info() {
    print('Nome: $name; Conta: $accountNumber; Saldo: $balance');
  }
}
