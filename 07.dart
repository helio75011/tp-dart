import 'dart:io';

void main() {
  // ouvrir un fichier
  File file = File('test.txt');

  // ecrire, en écrasant
  file.writeAsStringSync('Welcome\n');
  file.writeAsStringSync('Bienvenue\n', mode: FileMode.append);

  file = File('01.dart');
  String contents = file.readAsStringSync();
  print(contents);
  print(file);
  print('Chemin complet : ${file.absolute.path}');
  print('Taille : ${file.lengthSync()} bytes');
  print('Modification : ${file.lastModifiedSync()}');
}