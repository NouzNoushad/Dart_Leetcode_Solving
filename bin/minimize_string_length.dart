void main(List<String> args) {
  // 2716. Minimize String Length
  String s = "aaabc";
  int output = minimizeStringLength(s);
  print('output: $output');
}

int minimizeStringLength(String s) {
  return s.split('').toSet().toList().join().length;
}
