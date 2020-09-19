import 'package:flutter/material.dart';
import './page/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pin Konuna Bak',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'PlayfairDisplay',
      ),
      home: MyHomePage(title: 'Pin koduna bak'),
    );
  }
}
