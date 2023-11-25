import 'package:imcflutter/Models/Person.dart';

class CalcIMC {

  static Map<String, String> getResult(Person person) {
    return { 'name': person.getName(), 'rating': getResultRating(person.getWeight(), person.getHeight()), 'imc': calculateIMC(person.getWeight(), person.getHeight()).toStringAsFixed(2).toString() };
  }

  static String getResultRating(double weight, double height) {
    double result = calculateIMC(weight, height);

    return rating(result);
  }

  static double calculateIMC(double weight, double height) {
    return weight / (height * 2);
  }

  static String rating(double value) {
    if (value < 16.0) {
      return "Magreza grave";
    } else if (value >= 16.0 && value < 17.0) {
      return "Magreza moderada";
    } else if (value >= 17.0 && value < 18.5) {
      return "Magreza leve";
    } else if (value >= 18.5 && value < 25.0) {
      return "Saudável";
    } else if (value >= 25.0 && value < 30.0) {
      return "Sobrepeso";
    } else if (value >= 30.0 && value < 35.0) {
      return "Obesidade Grau I";
    } else if (value >= 35.0 && value < 40.0) {
      return "Obesidade Grau II (Severa)";
    } else {
      return "Obesidade Grau III (Mórbida)";
    }
  }
}
