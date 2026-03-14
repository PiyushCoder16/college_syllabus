import 'package:college_syllabus/pages/optional_page.dart';
import 'package:college_syllabus/widgets/course_card.dart';
import 'package:flutter/material.dart';

class SemestersPage extends StatelessWidget {
  const SemestersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("College Material"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18, bottom: 22, top: 22),
            child: Container(
              child: Text("Semesters",
                  style: Theme.of(context).textTheme.titleLarge),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 13,
                    childAspectRatio: 1.1),
                children: [
                  InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OptionalPage())),
                      child: const CourseCard(title: "I")),
                  const CourseCard(
                    title: "II",
                  ),
                  const CourseCard(title: "III"),
                  const CourseCard(title: "IV"),
                  const CourseCard(title: "V"),
                  const CourseCard(title: "VI"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
