void main(List<String> args) {
  // 162. Find Peak Element
  final List<int> numbers = [1, 2, 1, 3, 5, 6, 4];
  int output = findPeakElement(numbers);
  print('output: $output');
}

int findPeakElement(List<int> numbers) {
  String previousNumbers = numbers.join();
  numbers.sortNumbers;
  int peakNumber = numbers.last;
  int peakElementIndex =
      previousNumbers.split('').indexOf(peakNumber.toString());
  return peakElementIndex;
}

extension SortNumbers on List<int> {
  void get sortNumbers => sort((a, b) => a.compareTo(b));
}
