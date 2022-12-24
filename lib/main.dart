import 'package:flutter/material.dart';
import 'view/home/home.dart';
import 'view/city/city.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Travel",
      debugShowCheckedModeBanner: false,
      home: City(),
    );
  }
}
