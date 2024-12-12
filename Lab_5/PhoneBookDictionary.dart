import 'dart:io';

void main() {
  Map<String, String> phonebook = {
    'Shreeya': '123-456-7890',
    'Piyu': '234-567-8901',
    'Charlie': '345-678-9012'
  };
  print('Phonebook entries:');
  phonebook.forEach((name, number) {
    print('$name: $number');
  });
  print('Enter a name to search:');
  String? searchName = stdin.readLineSync();
  if (searchName != null && phonebook.containsKey(searchName)) {
    print('${searchName} phone number is: ${phonebook[searchName]}');
  } else {
    print('search name is not in the phonebook.');
  }
}