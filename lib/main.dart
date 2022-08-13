

import 'package:flutter/material.dart' show BuildContext, Colors, Key, MaterialApp, StatelessWidget, ThemeData, Widget, runApp;

import 'First_Look.dart';



//import 'Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const First_Look(),
      
    );
  }
}
