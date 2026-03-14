import 'package:flutter/material.dart';

class IconOnbookCustomWidt extends StatelessWidget {
  final String title;
  final IconData icon;

  const IconOnbookCustomWidt(
      {super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            icon,
            size: 30,
            color: Theme.of(context).iconTheme.color,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ]),
      ),
    ));
  }
}
