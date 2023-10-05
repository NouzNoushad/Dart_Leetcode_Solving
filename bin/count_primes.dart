void main() {
  int number = 10;
  List<int> output = findPrimeNumbers(number);
  print('output: ${output.length}');
}

List<int> findPrimeNumbers(int number) {
  List<int> numb = [];
  for (int i = 2; i <= number; i++) {
    if (isPrime(i)) {
      numb.add(i);
    }
  }
  return numb;
}

bool isPrime(int i) {
  if (i <= 1) {
    return false;
  }
  for (int j = 2; j * j <= i; j++) {
    if (i % j == 0) {
      return false;
    }
  }
  return true;
}
