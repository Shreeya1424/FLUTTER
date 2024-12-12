import 'dart:io';
void even(List<int> a){
  int counteven=0;
  int countodd=0;
  for(int i=0;i<a.length;i++){
    if(a[i]%2==0){
      counteven ++;
    }
    else{
      countodd ++;
    }
  }
  print('even no in this value is : $counteven');
  print('odd no in this value is : $countodd');
}

void main(){
  List<int> a=[];
  for(int i=0;i<5;i++){
    a.add(int.parse(stdin.readLineSync()!));
  }
  even(a);
}