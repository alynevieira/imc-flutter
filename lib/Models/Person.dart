class Person {
  String _name = '';
  double _weight = 0.0;
  double _height = 0.0;

  Person(String name, double peso, double height) {
    _name = name;
    _weight = peso;
    _height = height;
  }

  String getName() {
    return _name;
  }

  void setName(String name) {
    _name = name;
  }

  double getWeight() {
    return _weight;
  }

  void setWeight(double weight) {
    _weight = weight;
  }

  double getHeight() {
    return _height;
  }

  void setHeight(double height) {
    _height = height;
  }

  @override
  String toString() {
    return "Informações: Nome: $_name / Peso: $_weight kg / Altura: $_height cm";
  }
}
