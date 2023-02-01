import 'package:flutter/material.dart';
import 'package:flutter_travel/models/activity.model.dart';

class TripActivityList extends StatelessWidget {
  final List<Activity> activities;

  const TripActivityList({ 
    super.key, 
    required this.activities 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          var activity = activities[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(activity.image),
              ),
              title: Text(activity.name),
              trailing: const Icon(Icons.delete),
            ),
          );
        },
        itemCount: activities.length,
     ),
    );
  }
}
