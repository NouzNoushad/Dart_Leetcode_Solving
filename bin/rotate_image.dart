void main(List<String> args) {
  // 28.Rotate image
  List<List<int>> matrix = [
    [5, 1, 9, 11],
    [2, 4, 8, 10],
    [13, 3, 6, 7],
    [15, 14, 12, 16]
  ];
  List<List<int>> output = rotateImage(matrix);
  print('output: $output');
}

List<List<int>> rotateImage(List<List<int>> matrix) {
  List<List<int>> rotatedImage = [];
  for (int i = 0; i < matrix.length; i++) {
    List<int> rotateNumbers = [];
    for (int j = 0; j < matrix.length; j++) {
      rotateNumbers.add(matrix[j][i]);
    }
    rotatedImage.add(rotateNumbers.reversed.toList());
  }
  return rotatedImage;
}
