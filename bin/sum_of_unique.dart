void main(List<String> args) {
  // 1748. Sum of Unique Elements
  List<int> numbers = [1, 2, 3, 2];
  int output = sumOfUnique(numbers);
  print('output: $output');
}

int sumOfUnique(List<int> numbers) {
  for (int i = 0; i < numbers.length; i++) {
    for (int j = 0; j < numbers.length; j++) {
      if (i != j && numbers[i] == numbers[j]) {
        numbers.removeWhere((element) => element == numbers[i]);
      }
    }
  }
  return numbers.addNumbers(summation: (p, e) => p + e);
}

extension AddNumbers<T> on List<T> {
  T addNumbers({required Function summation}) =>
      fold<T>(0 as T, (T p, T e) => summation(p, e));
}
