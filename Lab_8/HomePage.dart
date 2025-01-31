import 'package:flutter/material.dart';
import 'package:flutterprojects/Lab_8/AboutPage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child:Column(children: [
        Text('Home Page ..!!',style: TextStyle(color: Colors.black,),),

        ElevatedButton(onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(
              builder: (context) => Aboutpage(name: "Shreeya",),
          ));
        },
            child: Text('Go to About Page'))
      ],
      ),
      )


    );
  }
}
