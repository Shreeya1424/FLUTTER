import 'dart:io';

void main() {
  stdout.write('Enter the number of elements: ');
  int? n = int.parse(stdin.readLineSync()!);

  if (n != null && n > 0) {
    List<int> numbers = [];
    print('Enter $n numbers:');
    for (int i = 0; i < n; i++) {
      stdout.write('Number ${i + 1}: ');
      int? number = int.tryParse(stdin.readLineSync()!);
      if (number != null) {
        numbers.add(number);
      } else {
        print('Invalid input. Please enter a valid number.');
        i--;
      }
    }
    int sum = numbers.where((number) => number % 3 == 0 || number % 5 == 0).reduce((a, b) => a + b);
    print('The sum of numbers divisible by 3 or 5 is: $sum');
  }
  else {
    print('Please enter a valid positive number for the count of elements.');
  }
}
