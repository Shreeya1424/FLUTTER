import 'dart:io';
void main() {
  List<String> n1 = ['Delhi', 'Mumbai', 'Bangalore', 'Hyderabad','Ahmedabad'];
 print('orignal list : $n1');
  int index = n1.indexOf('Ahmedabad');
  if(index != -1) {
    n1[index] = 'Surat';
  }
  print('replace list : $n1');

}

