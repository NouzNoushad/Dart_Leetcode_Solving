void main(List<String> args) {
  // 2278. Percentage of Letter in String
  String s = "foobar", letter = "o";
  int output = percentageLetter(s, letter);
  print('output: $output');
}

int percentageLetter(String s, String letter) {
  int count = 0;
  List<String> sList = s.split('');
  for (String sl in sList) {
    if (sl.contains(letter)) {
      count++;
    }
  }
  return ((count / sList.length) * 100).round();
}
