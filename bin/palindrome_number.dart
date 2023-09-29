void main(List<String> args) {
  // palindrome number
  int number = -121;
  String reversedNumber = number.reverseNumber;
  bool isPalindromeNumber = number.toString() == reversedNumber ? true : false;
  print(isPalindromeNumber);
}

extension ReverseNumber on int {
  String get reverseNumber => toString().split('').reversed.join();
}
