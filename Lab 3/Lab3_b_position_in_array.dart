import 'dart:io';

void insertElement(List<int> array, int element, int position) {
  if (position < 0 || position > array.length) {
    print("Invalid position");
    return;
  }

  array.insert(position, element);
}

void main() {
  print("Enter the array elements separated by spaces:");
  List<int> array = stdin.readLineSync()!
      .split(' ')
      .map((str) => int.parse(str))
      .toList();

  print("Enter the element to insert:");
  int element = int.parse(stdin.readLineSync()!);

  print("Enter the position to insert the element at:");
  int position = int.parse(stdin.readLineSync()!);

  insertElement(array, element, position);

  print("The modified array is: $array");
}
