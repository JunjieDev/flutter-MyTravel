import 'package:flutter/material.dart';
import 'package:flutter_travel/models/activity.model.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;

  const ActivityCard({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: Image.asset(
        activity.image,
        fit: BoxFit.cover,
      ),
    );
  }
}
