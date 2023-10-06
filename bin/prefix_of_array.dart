void main(List<String> args) {
  // 1961. Check If String Is a Prefix of Array
  String s = "iloveleetcode";
  List<String> words = ["i", "love", "leetcode", "apples"];
  bool output = isPrefixString(s, words);
  print('output: $output');
}

bool isPrefixString(String s, List<String> words) {
  String ps = "";
  for (int i = 0; i < words.length; i++) {
    ps += words[i];
    if (ps == s) {
      return true;
    }
  }
  return false;
}
