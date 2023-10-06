void main(List<String> args) {
  // 2000. Reverse Prefix of Word
  String word = "abcdefd";
  String ch = "d";
  String output = reversePrefix(word, ch);
  print('output: $output');
}

String reversePrefix(String word, String ch) {
  List<String> wordList = word.split('');
  int firstChIndex = wordList.indexOf(ch);
  var firstPrefix = wordList.sublist(0, firstChIndex + 1);
  List<String> reversedPrefix = firstPrefix.reversed.toList();
  wordList.replaceRange(0, firstChIndex + 1, reversedPrefix);
  return wordList.join();
}
