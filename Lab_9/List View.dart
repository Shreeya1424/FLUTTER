import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Lab_8/AboutPage.dart';
import '../Lab_8/HomePage.dart';
import 'TabView.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  List<String> listDemo=["A","B","C"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(),
                Text("Drawer Data"),
              ],
            ),),
            ListTile(onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => Aboutpage(name: "Shreeya",),
                  ));
            },
                leading: Icon(Icons.person),
                title: const Text(' My Profile '),
            ),
            ListTile(onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => Tabview(),
                  ));
            },
              leading: Icon(Icons.mail),
              title: const Text(' My Email '),
            ),
            ListTile(onTap: (){
              Navigator.pop(context);
            },
              leading: Icon(Icons.phone),
              title: const Text(' My Phone no. '),
            ),

          ],
        ),
      ),
      body: ListView.builder(itemCount: listDemo.length,itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 400,
            width: 200,
        decoration: BoxDecoration(
          border:Border.all()
    ),
    child: Center(child: Text(listDemo[index])))
      );

  },
      )
    );
  }
}
