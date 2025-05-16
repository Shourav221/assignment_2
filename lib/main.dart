import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/screen/homeScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment 2',
      home: homeScreen(),
    );
  }
}
