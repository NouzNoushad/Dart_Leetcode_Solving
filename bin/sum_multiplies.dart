void main(List<String> args) {
  // 2652. Sum Multiples
  const number = 9;
  List<int> divisibleTarget = [3, 5, 7];
  List<int> outputNumbers = findDivisibleNumbers(divisibleTarget, number);
  int sum = outputNumbers.addNumbers;
  print('output: $sum');
}

List<int> findDivisibleNumbers(List<int> divisibleTarget, int number) {
  List<int> outputNumbers = [];
  for (int i = 0; i < divisibleTarget.length; i++) {
    for (int j = 1; j <= number; j++) {
      if (j % divisibleTarget[i] == 0) {
        outputNumbers.add(j);
      }
    }
  }
  return outputNumbers;
}

extension AddNumberList on List<int> {
  int get addNumbers => fold(0, (current, previous) => current + previous);
}
