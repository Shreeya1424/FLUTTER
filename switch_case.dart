import 'dart:io';
import 'package:flutterprojects/utils.dart';
import 'crud_operation.dart';


void main() {
  User user = User();
  int? choice;
  do {
    print('Select Your Choice From Below Available Options:'
        '\n1. Insert User'
        '\n2. List User'
        '\n3. Update User'
        '\n4. Delete User'
        '\n5. Exit Application');
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
// INSERT USER
        stdout.write('Enter a Name : ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter a Age : ');
        int age = int.parse(stdin.readLineSync()!);
        stdout.write('Enter a Email : ');
        String email = stdin.readLineSync()!;

        user.addUserInList(NAME:name, AGE:age, EMAIL:email);

        break;
      case 2:
      // LIST USER
        user.getUserList();

        break;
      case 3:
//UPDATE USER
        stdout.write('Enter Name : ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter Age : ');
        int age = int.parse(stdin.readLineSync()!);
        stdout.write('Enter Email : ');
        String email = stdin.readLineSync()!;
        stdout.write('Enter id : ');
        int id = int.parse(stdin.readLineSync()!);
        user.updateUser(NAME, AGE, EMAIL, id);
        break;
    // class MyApp extends StatelessWidget {
    // const MyApp({super.key});
    //
    // stdout.write('Enter Primary key : ');
    // int id = int.parse(stdin.readLineSync()!);
    // user.updateUser(NAME,AGE,EMAIL,id);
    // break;
      case 4:
// DELETE USER
        stdout.write('Enter Primary key : ');
        int id = int.parse(stdin.readLineSync()!);
        user.deleteUser(id);
        break;

      default:
        print('Invalid Choice Please Try Again');
        break;
    }
  }
  while (choice != 5);
}
