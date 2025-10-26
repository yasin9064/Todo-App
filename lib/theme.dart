import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const MaterialColor primarySeedColor = Colors.deepPurple;

// Define a common TextTheme
final TextTheme appTextTheme = TextTheme(
  displayLarge: GoogleFonts.montserrat(fontSize: 57, fontWeight: FontWeight.bold),
  titleLarge: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.w500),
  bodyMedium: GoogleFonts.lato(fontSize: 14),
  labelLarge: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w500),
);

// Light Theme
final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primarySeedColor,
    brightness: Brightness.light,
  ),
  textTheme: appTextTheme,
  appBarTheme: AppBarTheme(
    backgroundColor: primarySeedColor,
    foregroundColor: Colors.white,
    titleTextStyle: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: primarySeedColor,
    foregroundColor: Colors.white,
  ),
  cardTheme: CardThemeData(
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: primarySeedColor, width: 2),
    ),
  ),
  scaffoldBackgroundColor: Colors.grey[50],
);

// Dark Theme
final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primarySeedColor,
    brightness: Brightness.dark,
  ),
  textTheme: appTextTheme,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[900],
    foregroundColor: Colors.white,
    titleTextStyle: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: primarySeedColor.shade200,
    foregroundColor: Colors.black,
  ),
  cardTheme: CardThemeData(
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: primarySeedColor.shade200, width: 2),
    ),
  ),
  scaffoldBackgroundColor: Colors.black,
);
