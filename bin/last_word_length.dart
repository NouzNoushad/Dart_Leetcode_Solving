void main(List<String> args) {
  // 58. Length of Last Word
  // find length of last word
  String word = "   fly me   to   the moon  ";
  int lastWordLength = word.removeEmptySpace.last.stringLength;
  print("output: $lastWordLength");
}

extension RemoveSpace on String {
  List<String> get removeEmptySpace =>
      split(" ").where((element) => element != "").toList();
}

extension StringLength on String {
  int get stringLength => split("").length;
}
