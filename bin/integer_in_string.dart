void main(List<String> args) {
  // 1805. Number of Different Integers in a String
  String word = "leet1234code234";
  List<int> output = numDifferentIntegers(word);
  int outputLength = output.length;
  print('output: $outputLength');
}

List<int> numDifferentIntegers(String word) {
  List<String> numberList = word.split(RegExp(r'[a-z]'));
  numberList.removeWhere((element) => element == "");
  List<int> list =
      numberList.map((e) => int.parse(e)).toSet().toList();
  return list;
}
