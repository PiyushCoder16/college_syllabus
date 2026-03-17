//import 'package:college_syllabus/widgets/course_card.dart';
import 'package:college_syllabus/pages/books.dart';
import 'package:college_syllabus/pages/notes.dart';
import 'package:college_syllabus/pages/pyq.dart';
import 'package:college_syllabus/widgets/icon_onbook.dart';
import 'package:flutter/material.dart';

class OptionalPage extends StatelessWidget {
  const OptionalPage({super.key});

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
            child:
                Text("Optional", style: Theme.of(context).textTheme.titleLarge),
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
                              builder: (context) => const Books())),
                      child: const IconOnbookCustomWidt(
                        icon: Icons.menu_book_outlined,
                        title: "Books",
                      )),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Notes())),
                    child: const IconOnbookCustomWidt(
                      icon: Icons.note_alt_outlined,
                      title: "Notes",
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Pyq())),
                    child: const IconOnbookCustomWidt(
                      icon: Icons.speaker_notes_rounded,
                      title: "PYQ",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
