import 'package:flutter/material.dart';
import 'package:flutter_travel/models/activity.model.dart';
import 'package:flutter_travel/models/trip.model.dart';
import 'package:flutter_travel/data/data.dart' as data;
import 'package:flutter_travel/view/city/widget/activity_list.dart';
import 'package:flutter_travel/view/city/widget/trip_activity_list.dart';
import 'package:flutter_travel/view/city/widget/trip_overview.dart';

class City extends StatefulWidget {
  final List<Activity> activities = data.activities;

  City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  Trip mytrip = Trip(city: 'Paris', activities: [], date: DateTime.now());
  int index = 0;

  void setDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now().add(const Duration(days: 1)),
      firstDate: DateTime.now(),
      lastDate: DateTime(2026),
    ).then((newDate) {
      if (newDate != null) {
        setState(() {
          mytrip.date = newDate;
        });
      }
    });
  }

  void switchIndex(newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.chevron_left),
        title: const Text('Travel organisation'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: const <Widget>[
          Icon(Icons.more_vert),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            TripOverview(
              setDate: setDate,
              mytrip: mytrip,
            ),
            Expanded(
              child: index == 0
                  ? ActivityList(
                      activities: widget.activities,
                    )
                  : const TripActivityList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Exploration',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stars),
            label: 'My Activity',
          ),
        ],
        onTap: switchIndex,
      ),
    );
  }
}
