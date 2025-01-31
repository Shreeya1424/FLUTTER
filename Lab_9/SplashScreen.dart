import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../DASHBOARD.dart';
import 'List Map.dart';
import 'List View.dart';
import 'TabView.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override

  void initState(){
    super.initState();
    Timer(Duration(seconds: 1),(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> DashboardScreen()),
          );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVLQpaTvZ5r8k6sJDnN_QetjObLpCuYNGfGKAWXqwjcGfusTBueRNeLy9VaTfoQdZBB18&usqp=CAU",
          height: 500,
          width: 300,
        ),
      ),
    );
  }
}

