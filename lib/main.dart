import 'package:college_syllabus/pages/courses_pages.dart';
//import 'package:college_syllabus/pages/optional_page.dart';
import 'package:college_syllabus/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'College Study',
      theme: AppTheme.lightTheme,
      home: const CoursesPages(),
    );
  }
}
