void main(List<String> args) {
  // 1470. Shuffle the Array
  List<int> numbers = [1, 2, 3, 4, 4, 3, 2, 1];
  int n = 4;
  List<int> output = shuffleArray(numbers, n);
  print('output: $output');
}

shuffleArray(List<int> numbers, int n) {
  List<int> firstHalf = numbers.sublist(0, 4);
  List<int> secondHalf = numbers.sublist(n);
  List<int> finalNumbers = [];
  int f = 0;
  int s = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (i % 2 == 0) {
      finalNumbers.add(firstHalf[f]);
      f++;
    } else {
      finalNumbers.add(secondHalf[s]);
      s++;
    }
  }
  return finalNumbers;
}
