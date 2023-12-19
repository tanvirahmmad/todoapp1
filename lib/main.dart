import 'package:flutter/material.dart';
import 'package:todoapp1/homepage.dart';
void main (){
  runApp(const todoapp());
}
class todoapp extends StatelessWidget {
  const todoapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch:Colors.yellow),
      home: homepage(),

    );
  }
}
