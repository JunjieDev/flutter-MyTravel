import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Travel",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          title: const Text("Flutter Travel"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: const <Widget>[Icon(Icons.more_vert)],
        ),
      ),
    );
  }
}
