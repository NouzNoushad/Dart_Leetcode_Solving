void main(List<String> args) {
  // 1512. Number of Good Pairs
  const List<int> numbers = [1, 2, 3, 1, 1, 3];
  int output = goodPairs(numbers);
  print('output: $output');
}

int goodPairs(List<int> numbers) {
  int count = 0;
  for (int i = 0; i < numbers.length; i++) {
    for (int j = 0; j < numbers.length; j++) {
      if (i != j && numbers[i] == numbers[j] && i < j) {
        print('($i, $j)');
        count++;
      }
    }
  }
  return count;
}
