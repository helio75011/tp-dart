int age = 25;
double pi = 3.14;

const int salary = 2000;
const salary2 = 2000;

int? salary3;

void main(){
  print(salary3);
  salary3 = 4000;
  // if (salary3 != null) {
  //   print(salary2 + salary3 + salary);
  // }

  print(salary2 + (salary3 ?? 0) + salary);

  // final now = DateTime.now();
  // print(now);

  print(age);
  print("le prof a " + age.toString() + " ans");
  print("le prof a $age ans");
  print("le prof a \"${age} ans\" ");

  print(age / pi);
  print(pi);

  String name = "Richnou";
  name = 'Richnou';

  name = '''
Richnou loulou
''';


print(name);
}