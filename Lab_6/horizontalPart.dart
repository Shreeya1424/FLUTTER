import 'package:flutter/material.dart';

class Horizontalpart extends StatelessWidget {
  const Horizontalpart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.red,),),
          Expanded(child: Container(color: Colors.purple,),),
          Expanded(child: Container(color: Colors.yellowAccent,),),

        ]
    )

    );
  }
}