void main(List<String> args) {
  // 189. Rotate Array
  List<int> numbers = [-1, -100, 3, 99];
  int k = 2;
  List<int> output = rotateArray(numbers, k);
  print('output: $output');
}

List<int> rotateArray(List<int> numbers, int k) {
  List<int> reverseLastList = numbers.sublist(numbers.length - k);
  numbers.removeRange(numbers.length - k, numbers.length);
  numbers.insertAll(0, reverseLastList);
  return numbers;
}
