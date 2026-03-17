import 'package:college_syllabus/widgets/subject_tile.dart';
import 'package:flutter/material.dart';

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("College Material"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18, bottom: 20, top: 22),
            child: Text("Books", style: Theme.of(context).textTheme.titleLarge),
          ),
          Expanded(
            child: ListView(
              children: [
                SubjectTile(
                    title: "Discrete Mathematics",
                    icon: Icons.dangerous,
                    icons: Icons.arrow_forward_ios,
                    onTap: () {}),
                SubjectTile(
                    title: "Business Communication",
                    icon: Icons.business_sharp,
                    icons: Icons.arrow_forward_ios,
                    onTap: () {}),
                SubjectTile(
                    title: "Computer Fundamentals",
                    icon: Icons.computer,
                    icons: Icons.arrow_forward_ios,
                    onTap: () {}),
                SubjectTile(
                    title: "Managamnets",
                    icon: Icons.manage_accounts,
                    icons: Icons.arrow_forward_ios,
                    onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
