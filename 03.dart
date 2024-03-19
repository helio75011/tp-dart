// Fonctions

void main() {
  // int a = add(23, 43);
  // print(a);

  // toto("Richnou", 25, true);
  // toto("Richnette", 30, false);

  // titi(name: "Richnou", age: 25);
  // titi(age: 25, name: "Richnou");
  tutu();
  tutu(age: 25);
}

void tutu({ String? name, int? age }) {
  name = name ?? "Anonyme";
  age = age ?? 25;
  print("$name, $age");
}

// paramètre nommés
void titi({ String name = "", int age = 0 }) {
  print("$name, $age");
}


// parmètre positionnel
void toto(String name, int age, bool sympa) {
  if(sympa == true) {
    print("${name} a ${age} et est sympa");
  } else {
    print("${name} a ${age} et n'est pas sympa");
  }

  String phrase = "${name} a ${age}";
  if (sympa == true) {
    phrase += " et est sympa";
  } else {
    phrase += " et n'est pas sympa";
  }
  print(phrase);

  print("${name} a ${age} et ${sympa ? " et est sympa" : "n'est pas sympa"}");
}

// Créér une function qui fait l'addition de 2 nombres entiers
// add
int add( int a, int b ) {
  return a + b;
}