void main(List<String> args) {
  // 2710. Remove Trailing Zeros From a String
  String value = "51230100";
  int output = removeTrailingZeros(value);
  print('output: $output');
}

int removeTrailingZeros(String value) {
  List<int> numbers = value.split('').map((e) => int.parse(e)).toList();
  while (numbers.last == 0) {
    numbers.removeLast();
  }
  return int.parse(numbers.join());
}
