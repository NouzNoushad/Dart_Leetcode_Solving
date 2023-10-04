void main(List<String> args) {
  // 1796. Second Largest Digit in a String
  String s = "dfa12321afd";
  int output = secondHighest(s);
  print('output: $output');
}

int secondHighest(String s) {
  var list =
      s.split('').where((e) => e.contains(RegExp(r'[0-9]'))).toSet().toList();
  list.sort((a, b) => a.length.compareTo(b.length));
  int secondLastIndex =list.length > 1 ? list.indexOf(list.last) - 1: list.indexOf(list.last);
  String secondHighest = list[secondLastIndex];
  return int.parse(secondHighest);
}
