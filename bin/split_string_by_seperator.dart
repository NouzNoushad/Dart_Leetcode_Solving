void main(List<String> args) {
  // 2788. Split Strings by Separator
  List<String> words = [".one.two.three.", ".four.five", "six"];
  String separator = ".";
  List<String> output = splitWordsBySeparator(words, separator);
  print("output: $output");
}

List<String> splitWordsBySeparator(List<String> words, String separator) {
  List<String> separatedStrings = [];
  for (String word in words) {
    separatedStrings.addAll(word.split(separator));
  }
  separatedStrings.removeWhere((item) => item == '');
  return separatedStrings;
}
