import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemeUtility {
  TextThemeUtility._();

  static TextTheme lightTextTheme = TextTheme(
    titleSmall: GoogleFonts.montserrat(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    bodySmall: GoogleFonts.montserrat(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    titleSmall: GoogleFonts.montserrat(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    bodySmall: GoogleFonts.montserrat(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    ),
  );
}
