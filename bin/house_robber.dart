void main(List<String> args) {
  // 198. House Robber
  List<int> numbers = [2, 7, 9, 3, 1];
  List<int> oddIndexNumbers = rob(numbers);
  int sum = oddIndexNumbers.addNumbers;
  print("output: $sum");
}

List<int> rob(List<int> numbers) {
  List<int> oddIndex = [];
  for (int i = 1; i <= numbers.length; i++) {
    if (i.isOdd) {
      oddIndex.add(numbers[i - 1]);
    }
  }
  return oddIndex;
}

extension AddNumbers on List<int> {
  int get addNumbers => fold(0, (previous, current) => previous + current);
}
