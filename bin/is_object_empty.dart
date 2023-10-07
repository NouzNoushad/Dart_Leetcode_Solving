void main(List<String> args) {
  // 2727. Is Object Empty
  var obj = [null, false, 0];
  late Type type;
  if (obj is List) {
    type = List;
  } else if (obj is Map) {
    type = Map;
  }
  bool output = isObjectEmpty(obj, type);
  print('output: $output');
}

bool isObjectEmpty(var obj, dynamic type) {
  bool isEmpty = true;
  if (type == List) {
    obj as List;
    isEmpty = obj.isEmpty ? true : false;
  } else if (type == Map) {
    obj as Map;
    isEmpty = obj.isEmpty ? true : false;
  }
  return isEmpty;
}
