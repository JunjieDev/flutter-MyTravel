import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Sarah Abs'),
    ),
    body: Image.asset(
      'assets/images/drawer/small.jpg',
    ),
  );
}
