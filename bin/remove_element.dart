void main(List<String> args) {
  // 27. Remove Element
  // remove element from the list
  List<int> numbers = [0, 1, 2, 2, 3, 0, 4, 2];
  int val = 2;

  var newList = removeElement(numbers, val);
  print("numbers: ${newList.numbers}");
  print("output: ${newList.output}");
}

OutputModel removeElement(
  List<int> numbers,
  int val,
) {
  int activeElements = 0;
  List<String> outputList = [];
  for (int number in numbers) {
    if (number == val) {
      outputList.add("_");
    } else {
      activeElements++;
      outputList.insert(0, number.toString());
    }
  }
  return OutputModel(numbers: outputList, output: activeElements);
}

class OutputModel {
  final List<String> numbers;
  final int output;

  OutputModel({required this.numbers, required this.output});
}
