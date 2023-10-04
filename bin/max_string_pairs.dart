void main(List<String> args) {
  // 2744. Find Maximum Number of String Pairs
  const List<String> words = ["cd", "ac", "dc", "ca", "zz"];
  int output = maximumNumberOfStringPairs(words);
  print('output: $output');
}

int maximumNumberOfStringPairs(List<String> words) {
  int count = 0;
  for (int i = 0; i < words.length; i++) {
    for (int j = 0; j < words.length; j++) {
      if (words[i] == words[j].reverseString && i != j) {
        count++;
        break;
      }
    }
  }
  return (count / 2).round();
}

extension ReverseString on String {
  String get reverseString => split('').reversed.join();
}
