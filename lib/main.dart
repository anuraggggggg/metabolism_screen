import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metabolism_screen/Screens/Screen2.dart';
import 'Screens/Screen1.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
