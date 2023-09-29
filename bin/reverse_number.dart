void main(List<String> args) {
  final int number = -302;
  print(reverseNumber(number));
}

int reverseNumber(int number) {
  final List<String> splitNumber = number.toString().split('-');
  final List<String> numberList = splitNumber.last.split('').reversed.toList();
  if (numberList.first.contains('0')) {
    numberList.remove('0');
  }
  if (splitNumber.first == '') {
    numberList.insert(0, '-');
  }
  return int.parse(numberList.join(''));
}
