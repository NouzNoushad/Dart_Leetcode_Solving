void main(List<String> args) {
  // 2677. Chunk Array
  List<int> array = 
    [1, 9, 6, 3, 2]
  ;
  int size = 3;
  chunkArray(array, size);
}

void chunkArray(List<int> array, int size) {
  List<List<int>> chunkList = [];
  while (array.length > size) {
    List<int> subList = array.sublist(0, size);
    chunkList.add(subList);
    array.removeRange(0, size);
  }
  array.isNotEmpty ? chunkList.add(array) : [];
  print(chunkList);
}
