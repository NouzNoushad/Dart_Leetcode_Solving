void main(List<String> args) {
  // 1528. Shuffle String
  String s = "codeleet";
  List<int> indices = [4, 5, 6, 7, 0, 2, 1, 3];
  String output = restoreString(s, indices);
  print("output: $output");
}

String restoreString(String s, List<int> indices) {
  List<String> strings = s.split('');
  Map<int, String> stringIndices = {};
  for (int i = 0; i < indices.length; i++) {
    stringIndices.putIfAbsent(indices[i], () => strings[i]);
  }
  Map<int, String> restoredMap =
      stringIndices.sortByKeys(compareTo: (a, b) => a.compareTo(b));
  String restoredString = restoredMap.values.map((e) => e).toList().join();
  return restoredString;
}

extension MapSort<K, V> on Map<K, V> {
  Map<K, V> sortByKeys({required int Function(K a, K b) compareTo}) {
    return Map.fromEntries(
        entries.toList()..sort((a, b) => compareTo(a.key, b.key)));
  }
}
