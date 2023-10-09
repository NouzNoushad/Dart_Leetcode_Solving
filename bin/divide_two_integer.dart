void main(List<String> args) {
  // 29. Divide Two Integers
  // divide two integers without using multiplication, division, and mod operator
  int dividend = 7, divisor = -3;
  int output = divideInteger(dividend, divisor);
  print('output: $output');
}

int divideInteger(int dividend, int divisor) {
  int count = 0;
  int divisorNumber = divisor;
  int dividendNumber = dividend;
  if (divisorNumber.sign == -1) {
    List number = divisor.toString().split('');
    number.removeAt(0);
    divisor = int.parse(number.toList().join());
  }
  if (dividendNumber.sign == -1) {
    List number = dividend.toString().split('');
    number.removeAt(0);
    dividend = int.parse(number.toList().join());
  }
  while (dividend > divisor) {
    count++;
    dividend -= divisor;
  }
  if (divisorNumber.sign == -1 || dividendNumber.sign == -1) {
    List countList = count.toString().split('');
    countList.insert(0, '-');
    count = int.parse(countList.join());
  }
  return count;
}
