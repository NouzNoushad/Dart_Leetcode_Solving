void main(List<String> args) {
  // 2678. Number of Senior Citizens
  List<String> details = [
    "7868190130M7522",
    "5303914400F9211",
    "9273338290F4010"
  ];
  int output = countSeniors(details);
  print('output: $output');
}

int countSeniors(List<String> details) {
  int count = 0;
  for (String detail in details) {
    int ages =
        int.parse(detail.substring(detail.length - 4, detail.length - 2));
    if (ages > 60) {
      count++;
    }
  }
  return count;
}
