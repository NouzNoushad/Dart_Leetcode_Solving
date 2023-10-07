void main(List<String> args) {
  // 2418. Sort the People
  List<String> names = ["Alice", "Bob", "Bob"];
  List<int> heights = [155, 185, 150];
  List<String> output = sortPeople(names, heights);
  print('output: $output');
}

List<String> sortPeople(List<String> names, List<int> heights) {
  Map<int, String> people = {};
  for (int i = 0; i < names.length; i++) {
    people[heights[i]] = names[i];
  }
  Map sortPeople = people.orderByValue(order: (a, b) => b.compareTo(a));
  return sortPeople.values.map<String>((value) => value).toList();
}

extension SortMap<K, V> on Map<K, V> {
  Map<K, V> orderByValue({required Function order}) {
    return Map.fromEntries(
        entries.toList()..sort((a, b) => order(a.key, b.key)));
  }
}
