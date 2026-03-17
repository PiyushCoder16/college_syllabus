import 'package:flutter/material.dart';

class SubjectTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final IconData icons;
  final VoidCallback onTap;

  const SubjectTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.icons,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Theme.of(context).iconTheme.color,
          size: 28,
        ),
        title: Text(title, style: Theme.of(context).textTheme.titleMedium),
        trailing: Icon(
          icons,
          color: Theme.of(context).iconTheme.color,
        ),
        onTap: onTap,
      ),
    );
  }
}
