import 'dart:io';

void main() {
  double? n1;
  stdout.write('enter a n1');
  n1 = double.parse(stdin.readLineSync()!);
  double? n2;
  stdout.write('enter a n2');
  n2 = double.parse(stdin.readLineSync()!);
  int choice=0;
  print("Enter a valid choice:");
    switch (choice) {
      case 1:
        double ans = n1 + n2;
        print("sum of two number is : $ans");
        break;
      case 2:
        double ans = n1 - n2;
        print("sub of two number is : $ans");
        break;
      case 3:
        double ans = n1 * n2;
        print("multi of two number is : $ans");
        break;
      case 4:
        double ans = n1 / n2;
        print("div of two number is : $ans");
        break;
      default:
        print("please enter a valid choice");
        break;
    }
  }

