import 'dart:math';

void main(List<String> args) {
  // 2525. Categorize Box According to Criteria
  int length = 1000, width = 35, height = 700, mass = 300;
  String output = categorizeBox(length, width, height, mass);
  print('output: $output');
}

String categorizeBox(int length, int width, int height, int mass) {
  String category = "";
  int volume = length * height * width;
  if (length >= pow(10, 4) ||
      width >= pow(10, 4) ||
      height >= pow(10, 4) ||
      mass >= pow(10, 4) ||
      volume >= pow(10, 9)) {
    category = "Bulky";
  } else if (mass >= 100) {
    category = "Heavy";
  }
  if (category == "Bulky" && category == "Heavy") {
    category = "Both";
  }
  if (category != "Bulky" && category != "Heavy") {
    category = "Neither";
  }
  if (category == "Bulky" && category != "Heavy") {
    category = "Bulky";
  }
  if (category != "Bulky" && category == "Heavy") {
    category = "Heavy";
  }
  return category;
}
