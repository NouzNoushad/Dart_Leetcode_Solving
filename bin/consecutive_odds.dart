void main(List<String> args) {
  // 1550. Three Consecutive Odds
  List<int> array = [1, 2, 34, 3, 4, 5, 7, 23, 12];
  bool output = threeConsecutiveOdds(array);
  print('output: $output');
}

bool threeConsecutiveOdds(List<int> array) {
  int count = 0;
  for (int i = 0; i < array.length; i++) {
    if (array[i].isOdd) {
      count++;
      if (count == 3) {
        return true;
      }
    } else {
      count = 0;
    }
  }
  return false;
}
