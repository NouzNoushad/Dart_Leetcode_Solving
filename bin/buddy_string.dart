void main(List<String> args) {
  // 859. Buddy Strings
  String s = "ab";
  String goal = "ba";
  bool isBuddy = buddyStrings(s, goal);
  print('output: $isBuddy');
}

bool buddyStrings(String s, String goal) {
  if (s.reverseString == goal) {
    return true;
  }
  return false;
}

extension ReverseString on String {
  String get reverseString => split('').reversed.join();
}
