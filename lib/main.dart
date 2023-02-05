import 'package:flutter/material.dart';
import 'view/home/home.dart';
import 'view/city/city.dart';
import 'view/drawer/drawer.dart';
import 'view/dark/dark_mode.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Travel",
      debugShowCheckedModeBanner: false,
      home: MyDrawer(),
    );
  }
}
