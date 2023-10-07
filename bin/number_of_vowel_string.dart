void main(List<String> args) {
  // 2586. Count the Number of Vowel Strings in Range
  List<String> words = ["are", "amy", "u"];
  int left = 0, right = 2;
  int output = numberOfVowelStrings(words, left, right);
  print('output: $output');
}

int numberOfVowelStrings(List<String> words, int left, int right) {
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  int count = 0;
  List<String> subWords = words.sublist(left, right + 1);
  print(subWords);
  for (String word in subWords) {
    if (vowels.contains(word[0]) && vowels.contains(word[word.length - 1])) {
      count++;
    }
  }
  return count;
}
