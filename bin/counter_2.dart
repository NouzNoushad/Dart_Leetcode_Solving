void main(List<String> args) {
  // 2665. Counter II
  const int init = 0;
  const List<String> calls = [
    "increment",
    "increment",
    "decrement",
    "reset",
    "reset"
  ];
  List<int> output = createCounter(init, calls);
  print('output: $output');
}

List<int> createCounter(int init, List<String> calls) {
  List<int> counterFlow = [];
  int counter = init;
  for (var call in calls) {
    switch (call) {
      case "increment":
        counter++;
        counterFlow.add(counter);
      case "decrement":
        counter--;
        counterFlow.add(counter);
      default:
        counter = init;
        counterFlow.add(counter);
    }
  }
  return counterFlow;
}
