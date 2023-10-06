import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themedata = ThemeData(
  // TEXT ------------------------------->
  fontFamily: GoogleFonts.poppins().fontFamily,
  textTheme: TextTheme(
    headline1: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontFamily: GoogleFonts.poppins(
            textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        )).fontFamily),
    headline2: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontFamily:
            GoogleFonts.poppins(textStyle: const TextStyle()).fontFamily),
    headline3: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontFamily: GoogleFonts.poppins().fontFamily),
    headline4: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontFamily: GoogleFonts.poppins(
            textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        )).fontFamily),
    headline5: TextStyle(
        fontSize: 13,
        color: Colors.black,
        fontFamily: GoogleFonts.poppins().fontFamily),
    headline6: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontFamily: GoogleFonts.poppins(
            textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        )).fontFamily),
    caption: TextStyle(
        fontSize: 15,
        color: const Color.fromRGBO(0, 159, 222, 1),
        fontFamily:
            GoogleFonts.poppins(textStyle: const TextStyle()).fontFamily),
  ),
  // ------------------------------------->
  primarySwatch: Colors.blue,
  errorColor: Colors.red,
  // inputDecorationTheme: const InputDecorationTheme(
  //   hintStyle: TextStyle(color: Colors.red),
  //   iconColor: Colors.red,
);
