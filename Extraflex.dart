import 'package:flutter/material.dart';

class ExtraLayout extends StatelessWidget {
  const ExtraLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.yellow,
              )),
              Expanded(
                  child: Column(
                   children: [
                     Expanded(child: Row(
                       children: [
                         Expanded(child: Container(color: Colors.greenAccent,)),
                         Expanded(child: Container(color: Colors.purple,)),
                       ],
                     )),
                     Expanded(child: Row(
                       children: [
                         Expanded(child: Container(color: Colors.pinkAccent,)),
                         Expanded(child: Container(color: Colors.black12,)),
                       ],
                     )),
                   ],
                  ),


              ),
            ],
          )),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.white,
                      )),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(child: Row(
                          children: [
                            Expanded(child: Container(color: Colors.greenAccent,)),
                            Expanded(child: Container(color: Colors.purple,)),
                            Expanded(child: Container(color: Colors.greenAccent,)),
                          ],
                        )),
                        Expanded(child: Row(
                          children: [
                            Expanded(child: Container(color: Colors.black12,)),
                            Expanded(child: Container(color: Colors.red,)),
                            Expanded(child: Container(color: Colors.lightGreenAccent,)),
                          ],
                        )),
                        Expanded(child: Row(
                          children: [
                            Expanded(child: Container(color: Colors.brown,)),
                            Expanded(child: Container(color: Colors.redAccent,)),
                            Expanded(child: Container(color: Colors.purpleAccent,)),
                          ],
                        )),
                      ],
                    ),


                  ),
                  Expanded(
                      child: Container(
                        color: Colors.yellow,
                      ))
                ],
              )),
          Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.red,)),
                  Expanded(child: Container(color: Colors.green,)),
                  Expanded(child: Container(color: Colors.pink,))
                ],
              ))
        ],
      ),
    );
  }
}
