void main(List<String> args) {
  // 290. Word Pattern
  String pattern = "abba", s = "dog cat cat dog";
  bool output = wordPattern(pattern, s);
  print('output: $output');
}

bool wordPattern(String pattern, String s) {
  List<String> patternList = pattern.split("");
  List<String> sList = s.split(" ");
  List<int?> patternIndex = checkWordPattern(patternList);
  List<int?> wordsIndex = checkWordPattern(sList);
  if (patternIndex.join() == wordsIndex.join()) {
    return true;
  } else {
    return false;
  }
}

List<int?> checkWordPattern(List<String> word) {
  Map<String, int> patternNumbered = {};
  List<int?> patternIndex = [];

  for (int i = 0; i < word.length; i++) {
    if (patternNumbered.containsKey(word[i])) {
      patternIndex.add(patternNumbered[word[i]]);
    } else {
      patternNumbered[word[i]] = i;
    }
  }
  return patternIndex;
}
