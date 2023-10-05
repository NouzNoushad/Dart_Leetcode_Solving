void main(List<String> args) {
  // 283. Move Zeroes
  final List<int> numbers = [0, 1, 0, 3, 12];
  moveZeroes(numbers);
}

void moveZeroes(List<int> numbers) {
  int count = 0;
  for (int number in numbers) {
    if (number == 0) {
      count++;
    }
  }
  numbers.removeWhere((element) => element == 0);
  numbers.addAll(List.generate(count, (index) => 0).toList());
  print(numbers);
}
