import 'package:flutter/material.dart';

class Verticalypart extends StatelessWidget {
  const Verticalypart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
            children: [
              Expanded(child: Container(color: Colors.red,),),
              Expanded(child: Container(color: Colors.purple,),),
              Expanded(child: Container(color: Colors.yellowAccent,),),

            ]
        )

    );
  }
}