void greet(String FirstName,String LastName){
  print('hello,$FirstName $LastName');
}
void greet2(String? LastName,{String? FirstName}){
  print('hello,$FirstName $LastName');
}

void greet3(String? LastName,[String? FirstName]){
  print('hello,$FirstName $LastName');
}


void main(){
  greet('john','doe');
  greet2(FirstName: 'john','doe');
  greet3('doe');
}