void main(List<String> args) {
  // 2180. Count Integers With Even Digit Sum
  int number = 4;
  int output = countEven(number);
  print('output: $output');
}

int countEven(int number) {
  int count = 0;
  for (int i = 1; i <= number; i++) {
    List<int> splitNumber =
        i.toString().split('').map((e) => int.parse(e)).toList();
    int sum = splitNumber.fold(0, (previous, element) => previous + element);
    if (sum % 2 == 0) {
      count++;
    }
  }
  return count;
}
