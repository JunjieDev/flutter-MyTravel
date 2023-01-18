import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_travel/models/activity.model.dart';
import 'package:flutter_travel/data/data.dart' as data;
import 'package:flutter_travel/models/trip.model.dart';
import 'package:flutter_travel/view/city/widget/activity_card.dart';
import 'package:intl/intl.dart';

class City extends StatefulWidget {
  final List<Activity> activities = data.activities;

  City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  Trip mytrip = Trip(city: 'Paris', activities: [], date: DateTime.now());

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
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 200,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(DateFormat('d/M/y').format(mytrip.date)),
                      ),
                      ElevatedButton(
                        onPressed: () => {},
                        child: const Text('Select a date'),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                children: widget.activities
                    .map((activity) => ActivityCard(activity: activity))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
