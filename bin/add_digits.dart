void main(List<String> args) {
  // 258. Add Digits
  int number = 38;
  int output = addDigits(number);
  print('output: $output');
}

int addDigits(int number) {
  int numberLoop = addNumberLoop(number);
  while (numberLoop.splitNumber.length > 1) {
    numberLoop = addNumberLoop(numberLoop);
  }
  return numberLoop;
}

int addNumberLoop(int number) {
  return number.splitNumber.addNumbers;
}

extension SplitNumber on int {
  List<int> get splitNumber =>
      toString().split('').map((e) => int.parse(e)).toList();
}

extension AddNumbers on List<int> {
  int get addNumbers => fold(0, ((previous, element) => previous + element));
}
