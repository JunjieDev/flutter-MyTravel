import 'package:flutter/material.dart';
import 'package:flutter_travel/models/activity.model.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;

  const ActivityCard({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(activity.image),
      ),
      title: Text(activity.name),
      subtitle: Text(activity.city),
      contentPadding: const EdgeInsets.all(0),
      trailing: Checkbox(
        value: true,
        tristate: true,
        onChanged: (e) => {},
        activeColor: Colors.black,
        checkColor: Colors.red,
      ),
    );
  }
}
