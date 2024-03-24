/*
  * Conceito
    - DateTime é uma classe para definir segundos, horas, dias e anos.
    - Duration é um classe para definir um determinado tempo.
*/

bool isOlder(DateTime dateTime1, DateTime dateTime2) {
  // Verfica se dateTime1 é anterior a dateTime2
  return dateTime1.isBefore(dateTime2);
}

bool isNewest(DateTime dateTime1, DateTime dateTime2) {
  // Verfica se dateTime1 foi após a dateTime2
  return dateTime1.isBefore(dateTime2);
}

String dayOfTheWeek(DateTime dateTime) {
  int weekday = dateTime.weekday;

  switch (weekday) {
    case 1:
      return 'Segunda-feira';
    case 2:
      return 'Terça-feira';
    case 3:
      return 'Quarta-feira';
    case 4:
      return 'Quinta-feira';
    case 5:
      return 'Sexta-feira';
    case 6:
      return 'Sábado';
    case 7:
      return 'Domingo';
    default:
      return 'Valor inválido';
  }
}

Duration live(DateTime dateTime) {
  return DateTime.now().difference(dateTime);
}

void main(List<String> args) {
  DateTime dateTime = DateTime.now();
  print('Data atual: $dateTime');

  DateTime john = DateTime(1989, 11, 9);
  DateTime robert = DateTime(1989, 11, 10);

  bool johnIsOlder = isOlder(john, robert);
  if (johnIsOlder) {
    print('John é mais velho que Robert');
  } else {
    print('Robert é mais velho que John');
  }

  bool robertIsNewest = isNewest(john, robert);
  if (robertIsNewest) {
    print('Robert é mais novo que John');
  } else {
    print('John é mais novo que Robert');
  }

  String johnWeekday = dayOfTheWeek(john);
  String robertWeekday = dayOfTheWeek(robert);

  print(
      'John nasceu em um (a) $johnWeekday, enquanto Robert nasceu no (a) $robertWeekday');

  Duration johnDuration = live(john);

  int johnYear = johnDuration.inDays ~/ 365;
  int johnDays = johnDuration.inDays.toInt();
  print('John tem $johnDays dias vivo, ou seja $johnYear anos');
}
