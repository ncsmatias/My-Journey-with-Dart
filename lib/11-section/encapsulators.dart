import 'Employee.dart';

void main(List<String> args) {
  Employee employee = Employee(1, 'Felipe', 'Junior', 'Engenheiro', 3000);

  // Não é permito o acesso, pois _name é privado
  // print(employee._name);

  // Utilizando o getter para retornar o valor do atributo privado name
  print('Nome do funcionário: ${employee.name}');

  // Utilizando o setter para alterar o valor do atributo privado name
  employee.name = 'Juliano';
  print('Nome do funcionário atualizado: ${employee.name}');

  // Atualizando salário do funcionário

  employee.salary = 5000;

  employee.info();

  // Utilzaidon o getter customizado
  print(
      'O salário do funcionário: ${employee.name} é de ${employee.salaryFormated}');

  // Utilzaidno o setter customizado
  employee.raiseSalary = 25;

  print(
      'O salário ajustado do funcionário: ${employee.name} é de ${employee.salaryFormated}');
}
