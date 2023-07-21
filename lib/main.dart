import 'package:dice_app/dice.dart';
import 'package:dice_app/gradient.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: gradient(firstcolor: Colors.red, secondcolor: Colors.white, begin: Alignment.topRight , end: Alignment.bottomLeft),
    );
  }
}
