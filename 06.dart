/*
Exercice
-   créer une fonction qui prend en paramètre une liste de nombre décimaux (double)
-   affiche le nombre minimum et le nombre aximum
-   minmax()

faire une démo :  [12, 24, -5, 74]
mini: -5
maxi: 74
*/
import 'dart:math';

List<double> generateRandomNumbers(int length) {
  Random random = Random();
  List<double> numbers = List<double>.generate(
      length, (index) => random.nextDouble() * (random.nextBool() ? 1 : -1));
  return numbers;
}

int diff(DateTime start, DateTime stop) {
  return stop.millisecondsSinceEpoch - start.millisecondsSinceEpoch;
}

void main() {
  List<double> numbers = generateRandomNumbers(4);

  DateTime start, stop;
  int oceaneTime, faisselTime, minmaxTime, maihylanTime;

  start = DateTime.now();
  oceane(numbers);
  stop = DateTime.now();
  oceaneTime = diff(start, stop);

  start = DateTime.now();
  faissel(numbers);
  stop = DateTime.now();
  faisselTime = diff(start, stop);

  start = DateTime.now();
  minmax(numbers);
  stop = DateTime.now();
  minmaxTime = diff(start, stop);

  start = DateTime.now();
  maihylan(numbers);
  stop = DateTime.now();
  maihylanTime = diff(start, stop);

  print('oceane: $oceaneTime milliseconds');
  print('faissel: $faisselTime milliseconds');
  print('minmax: $minmaxTime milliseconds');
  print('maihylan: $maihylanTime milliseconds');
}

void oceane(List<double> nums) {
  nums.sort();
  print('min: ${nums.first}, max: ${nums.last}');
}

void faissel(List<double> nums) {
  double min = nums.reduce((val, el) => val < el ? val : el);
  double max = nums.reduce((val, el) => val > el ? val : el);
  print('min: ${min}, max: ${max}');
}

void minmax(List<double> nums) {
  double min = nums[0];
  double max = nums[0];
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] < min)
      min = nums[i];
    else if (nums[i] > max) max = nums[i];
  }
  print('min: ${min}, max: ${max}');
}

void maihylan(List<double> nums) {
  double mini = nums.reduce(min);
  double maxi = nums.reduce(max);
  print('min: ${mini}, max: ${maxi}');
}
