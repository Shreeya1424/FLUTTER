
class User{
  List<Map<String,dynamic>> UserList = [];

  // create
  void addUserInList(String name,age,email){
    Map<String,dynamic> map = {};
    map['NAME']=name;
    map['AGE']=age;
    map['EMAIL']=email;
    UserList.add(map);
  }

  //READ
  dynamic getUserList(){
    print (UserList);
  }

  //UPDATE
void updateUser(name,age,email,id){
  Map<String,dynamic> map = {};
  map['NAME']=name;
  map['AGE']=age;
  map['EMAIL']=email;
  UserList[id] = map;
}

//DELETE
void deleteUser(id){
    UserList.removeAt(id);
}
}



//
