void main(List<String> arguments) {
  String name = 'john';
  print(name.reverseString);
}

extension on String {
  get reverseString => split('').reversed.join();
}
