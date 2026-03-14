import 'package:college_syllabus/pages/semesters_page.dart';
import 'package:college_syllabus/widgets/course_card.dart';
import 'package:flutter/material.dart';

class CoursesPages extends StatelessWidget {
  const CoursesPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("College Material")),
        drawer: const Drawer(
          child: Center(child: Text("college syllabus")),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              padding: const EdgeInsets.only(left: 18, top: 22, bottom: 22),

              ///color: Colors.yellow,
              // height: 70,
              // width: 150,
              child: Text("Courses",
                  style: Theme.of(context).textTheme.titleLarge)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11.0),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1.9),
                children: [
                  InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SemestersPage())),
                      child: const CourseCard(title: "B.C.A")),
                  const CourseCard(title: "B.B.A"),
                  const CourseCard(title: "B.S.C"),
                  const CourseCard(title: "B.com"),
                  const CourseCard(title: "B.F.A"),
                ],
              ),
            ),
          ),
        ]));
  }
}
