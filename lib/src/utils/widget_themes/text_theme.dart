import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemeUtility {
  static TextTheme lightTextTheme = TextTheme(
    titleLarge: GoogleFonts.montserrat(
        color: Colors.black, fontWeight: FontWeight.bold),
    bodySmall: GoogleFonts.montserrat(
        color: Colors.black, fontWeight: FontWeight.bold),
  );

  static TextTheme darkTextTheme = TextTheme(
    titleLarge: GoogleFonts.montserrat(
        color: Colors.white, fontWeight: FontWeight.bold),
    bodySmall: GoogleFonts.montserrat(
        color: Colors.white, fontWeight: FontWeight.bold),
  );
}
