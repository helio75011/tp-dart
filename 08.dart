class Person {
  String color = '';
  String? name;

  Person(String name) {
    this.name = name;
  }

  void displayInfo() {
    print("Bonjour ${this.name} !");
    print("Bonjour ${name} !");
  }
}

class Admin extends Person {
  // Exercice : caller le constructeur : super
  Admin(String name) : super(name)  {}
}

void main() {
  Person p = new Person("Ric");
  p.name = "Richnou";
  p.displayInfo();
  print(p.name);
}