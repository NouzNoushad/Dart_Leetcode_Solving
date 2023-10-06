void main(List<String> args) {
  // 1704. Determine if String Halves Are Alike
  String word = "textbook";
  List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
  bool output = halvesAreAlike(word, vowels);
  print('output: $output');
}

bool halvesAreAlike(String word, List<String> vowels) {
  int wordLength = word.length;
  int wordHalf = (wordLength / 2).round();
  List<String> splitString = word.split('');
  List<String> firstHalf = splitString.sublist(0, wordHalf);
  List<String> secondHalf = splitString.sublist(wordHalf);
  int firstCount = 0;
  int secondCount = 0;
  for (int i = 0; i < wordHalf; i++) {
    if (vowels.contains(firstHalf[i])) {
      firstCount++;
    }
    if (vowels.contains(secondHalf[i])) {
      secondCount++;
    }
  }
  if (firstCount == secondCount) {
    return true;
  }
  return false;
}
