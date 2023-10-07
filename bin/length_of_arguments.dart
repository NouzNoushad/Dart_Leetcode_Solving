void main(List<String> args) {
  // 2703. Return Length of Arguments Passed
  List<dynamic> args = [5];
  int output = argumentLength(args);
  print('output: $output');
}

int argumentLength(List args) {
  return args.length;
}
