void main(List<String> args) {
  // 414. Third Maximum Number
  List<int> numbers = [2, 2, 3, 1];
  int output = thirdMax(numbers);
  print('output: $output');
}

int thirdMax(List<int> numbers) {
  List<int> nonRepeatingNumbers = numbers.toSet().toList();
  nonRepeatingNumbers.sort((a, b) => a.compareTo(b));
  int firstMaxIndex = numbers.indexOf(nonRepeatingNumbers.last);
  int thirdMaxIndex = firstMaxIndex - 2;
  int thirdMaxNumber = thirdMaxIndex >= 0
      ? nonRepeatingNumbers[thirdMaxIndex]
      : nonRepeatingNumbers[firstMaxIndex];
  return thirdMaxNumber;
}
