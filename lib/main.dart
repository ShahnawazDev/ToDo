import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  // init the hive
  await Hive.initFlutter();

  //open a box
  await Hive.openBox('mybox');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: _buildTheme(),
    );
  }

  ThemeData _buildTheme() {
    var baseTheme = ThemeData(
      primarySwatch: Colors.cyan,
      scaffoldBackgroundColor: Colors.cyanAccent,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'VarelaRound',
        ),
        displayMedium: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          fontFamily: 'VarelaRound',
        ),
        displaySmall: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          fontFamily: 'VarelaRound',
        ),
        headlineMedium: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          fontFamily: 'VarelaRound',
        ),
        headlineSmall: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          fontFamily: 'VarelaRound',
        ),
        titleLarge: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
          fontFamily: 'VarelaRound',
        ),
        bodyLarge: TextStyle(
          fontSize: 16.0,
          fontFamily: 'VarelaRound',
        ),
        bodyMedium: TextStyle(
          fontSize: 14.0,
          fontFamily: 'VarelaRound',
        ),
        labelLarge: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'VarelaRound',
        ),
        bodySmall: TextStyle(
          fontSize: 12.0,
          fontFamily: 'VarelaRound',
        ),
        titleMedium: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          fontFamily: 'VarelaRound',
        ),
        titleSmall: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
          fontFamily: 'VarelaRound',
        ),
        labelSmall: TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'VarelaRound',
        ),
      ),
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.varelaRoundTextTheme(baseTheme.textTheme),
    );
  }
}
