void main(List<String> args) {
  // 2614. Prime In Diagonal
  List<List<int>> numbers = [
    [1, 2, 3],
    [5, 6, 7],
    [9, 10, 11]
  ];
  int output = primeInDiagonal(numbers);
  print('output: $output');
}

int primeInDiagonal(List<List<int>> numbers) {
  List<int> numberList = [];
  for (var number in numbers) {
    for (int i = 0; i < number.length; i++) {
      numberList.add(number[i]);
    }
  }
  return checkPrimeNumber(numberList);
}

int checkPrimeNumber(List<int> numbers) {
  List<int> primeNumbers = [];
  for (int n in numbers) {
    if (isPrime(n)) {
      primeNumbers.add(n);
    }
  }
  primeNumbers.sort();
  return primeNumbers.last;
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
