import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String style;

  const CourseCard({super.key, required this.title, this.style = "default"});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
