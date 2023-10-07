void main(List<String> args) {
  // 14. Longest Common Prefix
  List<String> strings = ["flower", "flow", "flight"];
  String output = longestCommonPrefix(strings);
  print('output: $output');
}

String longestCommonPrefix(List<String> strings) {
  String firstString = strings.first;
  for (String string in strings) {
    while (!string.startsWith(firstString)) {
      firstString = firstString.substring(0, firstString.length - 1);
    }
  }
  return firstString;
}
