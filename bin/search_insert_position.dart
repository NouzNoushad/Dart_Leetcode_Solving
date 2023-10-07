void main(List<String> args) {
  // 35. Search Insert Position
  List<int> numbers = [1, 3, 5, 6];
  int target = 7;
  int output = searchInsert(numbers, target);
  print('output: $output');
}

int searchInsert(List<int> numbers, int target) {
  int index = 0;
  if (numbers.contains(target)) {
    index = numbers.indexOf(target);
  } else {
    numbers.add(target);
    numbers.sort();
    index = numbers.indexOf(target);
  }
  return index;
}
