void main(List<String> args) {
  // 217. Contains Duplicate
  List<int> numbers = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
  bool output = containsDuplicate(numbers);
  print('output: $output');
}

bool containsDuplicate(List<int> numbers) {
  bool isDuplicate = false;
  for (int i = 0; i < numbers.length; i++) {
    for (int j = 0; j < numbers.length; j++) {
      if (i != j && numbers[i] == numbers[j]) {
        isDuplicate = true;
        break;
      }
    }
  }
  return isDuplicate;
}
