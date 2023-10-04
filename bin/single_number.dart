void main(List<String> args) {
  // 136. Single Number
  // find the non-repeating value from the list
  // workout : i: 1, j: 1
  const List<int> numbers = [4, 1, 2, 1, 2];
  int result = nonRepeatingValue(numbers);
  print("Non repeating number: $result");
}

int nonRepeatingValue(List<int> numbers) {
  int nonRepeatingNumber = 0;
  for (int i = 0; i < numbers.length; i++) {
    int flag = 0;
    for (int j = 0; j < numbers.length; j++) {
      if (numbers[i] == numbers[j] && i != j) {
        flag = 1;
        break;
      }
    }
    if (flag == 0) {
      nonRepeatingNumber = numbers[i];
    }
  }
  return nonRepeatingNumber;
}
