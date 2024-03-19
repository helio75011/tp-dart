/*
Collections
list : ordonnées, indice, doublons
set : non ordonnées, uniques
map : clef / valeur(json)
record
*/

List<String> namesL = [
  "Richard", 
  "William",
  "Virginie", 
  "Jeremy"
];

Set<String> namesS = {
  "Richard", 
  "William", 
  "Virginie", 
  "Jeremy"
};

Map<String, String> capitals = {
  "FR": "Paris",
  'BE': 'Bruxelles',
  'CH': 'Berne'
};

Map<int, Map> users = {
  1: {
    'name': 'richnou', 
    'age': 25
  },
  2: {
    'name': 'jeremy', 
    'age': 15
  },
};

void main() {

  // users
  print(users[2]?["name"]); // potentialité de null
  print(users[2]?["xxxx"]);

  // capitals
  print(capitals["BE"]);
  capitals["ES"] = 'Madrid';
  print(capitals);

  // list
  print(namesL);
  namesL.add("Sophie");
  print(namesL[1]);
  namesL.sort();
  print(namesL);

  // set
  print(namesS);
  print(namesS.last);

  // for, while, do while, foreach, for in
  for (int i = 0; i < namesL.length; i++) {
    print(namesL[i]);
  }

  int value = 5;
  while (value > 0) {
    print(value);
    value--;
  }

  for (String name in namesL) {
    print(name);
  }

  namesL.forEach((name) {
    print(name);
  });
}