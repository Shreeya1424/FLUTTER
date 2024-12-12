import 'dart:io';

void main() {
  List<int> list1 = _readList('first');
  List<int> list2 = _readList('second');
  List<int> commonElements = list1.where((element) => list2.contains(element)).toList();
  print('Common elements: $commonElements');
}
List<int> _readList(String listName) {
  List<int> list = [];
  print('Enter elements for the $listName list (enter "done" to finish):');

  while (true) {
    stdout.write('Element: ');
    String? input = stdin.readLineSync();

    if (input == 'done') break;

    int? number = int.parse(input!);
    if (number != null) {
      list.add(number);
    } else {
      print('Invalid input. Please enter a valid number or "done" to finish.');
    }
  }

  return list;
}
