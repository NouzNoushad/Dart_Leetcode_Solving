void main(List<String> args) {
  // 412. Fizz Buzz
  const int number = 15;
  List<String> output = fizzBuzz(number);
  print('output: $output');
}

List<String> fizzBuzz(int number) {
  List<String> fizzBuzz = [];
  for (int i = 1; i <= number; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      fizzBuzz.add('FizzBuzz');
    } else if (i % 3 == 0) {
      fizzBuzz.add('Fizz');
    } else if (i % 5 == 0) {
      fizzBuzz.add('Buzz');
    } else {
      fizzBuzz.add(i.toString());
    }
  }
  return fizzBuzz;
}
