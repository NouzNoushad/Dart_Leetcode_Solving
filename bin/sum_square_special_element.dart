void main(List<String> args) {
  // 2778. Sum of Squares of Special Elements
  List<int> numbers = [2, 7, 1, 19, 18, 3];
  List<int> output = sumOfSquares(numbers);
  print("output: ${output.squareAndAdd}");
}

List<int> sumOfSquares(List<int> numbers) {
  int n = numbers.length;
  List<int> indexValues = [];
  for (int i = 1; i <= numbers.length; i++) {
    if (n % i == 0) {
      indexValues.add(numbers[i - 1]);
    }
  }
  return indexValues;
}

extension SquareSumNumber on List<int> {
  int get squareAndAdd =>
      fold(0, (int current, int previous) => current + (previous * previous));
}
