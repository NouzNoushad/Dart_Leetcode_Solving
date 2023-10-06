void main(List<String> args) {
  // 1967. Number of Strings That Appear as Substrings in Word
  List<String> patterns = ["a", "abc", "bc", "d"];
  String word = "abc";
  int output = numberOfSubstrings(patterns, word);
  print('output: $output');
}

int numberOfSubstrings(List<String> patterns, String word) {
  List<String> wordList = word.split('').toList();
  int patternCount = 0;
  for (int i = 0; i < patterns.length; i++) {
    List<String> patternList = patterns[i].split('');
    for (int j = 0; j < patternList.length; j++) {
      if (!wordList.contains(patternList[j])) {
        patternCount++;
      }
    }
  }
  return patterns.length - patternCount;
}
