void main(List<String> args) {
  // 1460. Make Two Arrays Equal by Reversing Subarrays
  final List<int> target = [1, 2, 3, 4];
  final List<int> arr = [2, 4, 1, 3];
  bool output = canBeEqual(target, arr);
  print('output: $output');
}

bool canBeEqual(List<int> target, List<int> arr) {
  target.sort((a, b) => a.compareTo(b));
  arr.sort((a, b) => a.compareTo(b));
  bool isEqual = target.join('') == arr.join('');
  return isEqual;
}
