void main(List<String> args) {
  // 75. Sort Colors
  final List<int> numbers = [2, 0, 1];
  List<int> output = sortColors(numbers);
  print('output: $output');
}

List<int> sortColors(List<int> numbers) {
  numbers.sortNumbers;
  return numbers;
}

extension SortNumbers on List<int> {
  void get sortNumbers => sort((a, b) => a.compareTo(b));
}
