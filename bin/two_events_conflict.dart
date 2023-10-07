void main(List<String> args) {
  // 2446. Determine if Two Events Have Conflict
  List<String> event1 = ["10:00", "11:00"]; 
  List<String> event2 = ["14:00", "15:00"];
  bool output = haveConflict(event1, event2);
  print('output: $output');
}

bool haveConflict(List<String> event1, List<String> event2) {
  bool conflict = false;
  List<int> eventInt1 =
      event1.map((e) => int.parse(e.replaceAll(":", ""))).toList();
  List<int> eventInt2 =
      event2.map((e) => int.parse(e.replaceAll(":", ""))).toList();
  conflict = eventInt1.first > eventInt2.last ? false : true;
  conflict = eventInt2.first > eventInt1.last ? false : true;
  return conflict;
}
