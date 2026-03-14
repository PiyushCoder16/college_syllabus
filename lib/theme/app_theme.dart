import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 194, 193, 193),
    //primaryColor: const Color.fromARGB(80, 11, 61, 102),

    //app bar
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 23, 95, 154),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    //card theme
    cardTheme: CardThemeData(
      color: const Color.fromARGB(255, 246, 243, 243),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    //text theme
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff1F2937)),
      titleMedium: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xff374151)),
      titleSmall: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xff374151)),
    ),
    //icon theme
    iconTheme: const IconThemeData(color: Colors.blue, size: 22),
  );
}
