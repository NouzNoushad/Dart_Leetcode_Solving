void main(List<String> args) {
  // 2129. Capitalize the Title
  String title = "First leTTeR of EACH Word";
  String output = capitalizeTitle(title);
  print('output: $output');
}

String capitalizeTitle(String title) {
  List<String> splitTitle = title.split(' ');
  List newTitle = [];
  for (String s in splitTitle) {
    if (s.length == 1 || s.length == 2) {
      s = s.toLowerCase();
    } else {
      s = s.toCamelCase();
    }
    newTitle.add(s);
  }
  return newTitle.join(' ');
}

extension CamelCaseString on String {
  String toCamelCase() => this[0].toUpperCase() + substring(1).toLowerCase();
}
