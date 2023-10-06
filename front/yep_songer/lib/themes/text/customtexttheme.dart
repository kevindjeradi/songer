import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class CustomTextTheme extends StatelessWidget {
//   const CustomTextTheme({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextTheme(

//     );
//   }
// }

class CustomTextTheme {
  static final TextStyle lowOpacityText =
      TextStyle(color: Colors.black.withOpacity(0.6));
  static data() {
    return TextTheme(
      headline1: TextStyle(
          fontSize: 56,
          fontWeight: FontWeight.bold,
          color: Colors.orange,
          fontFamily: GoogleFonts.openSans().fontFamily),
      headline2: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
      headline3: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      headline4: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      headline5: const TextStyle(fontSize: 7),
      headline6: const TextStyle(fontSize: 5, color: Colors.grey),
    );
  }
}
