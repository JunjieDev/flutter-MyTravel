import 'package:flutter/material.dart';
import 'package:flutter_travel/models/activity.model.dart';
import 'package:flutter_travel/data/data.dart' as data;
import 'package:flutter_travel/view/city/widget/activity_card.dart';

class City extends StatefulWidget {
  final List<Activity> activities = data.activities;

  City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.chevron_left),
        title: const Text('Paris'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: const <Widget>[
          Icon(Icons.more_vert),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: widget.activities.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) =>
              ActivityCard(activity: widget.activities[index]),
        ),
      ),
    );
  }
}
