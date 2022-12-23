import 'package:flutter/material.dart';
import 'city_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: InkWell(
          splashColor: Colors.white,
          radius: 100,
          highlightColor: Colors.amber,
          onTap: () {
            print("Simple tap on Title");
          },
          onLongPress: () {
            print("Long Press on Title");
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: const <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const <Widget>[
            CityCard(),
          ],
        ),
      ),
    );
  }
}
