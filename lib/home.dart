import 'package:flutter/material.dart';
import 'city_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List cities = [
    {
      'name': 'Paris',
      'image': 'assets/images/paris.jpeg',
      'checked': false,
    },
    {
      'name': 'Nice',
      'image': 'assets/images/nice.jpeg',
      'checked': false,
    },
    {
      'name': 'Lyon',
      'image': 'assets/images/lyon.jpeg',
      'checked': false,
    },
  ];

  void switchCheched(city) {
    var index = cities.indexOf(city);
    setState(() {
      cities[index]['checked'] = !cities[index]['checked'];
    });
  }

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
          child: const Text("Flutter Travel"),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: const <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: cities
              .map((citie) => CityCard(
                    name: citie['name'],
                    image: citie['image'],
                    checked: citie['checked'],
                    updateChecked: () => switchCheched(citie),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
