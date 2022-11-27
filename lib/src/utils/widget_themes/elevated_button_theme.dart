import 'package:flutter/material.dart';

class ElevatedButtonThemeUtility {
  ElevatedButtonThemeUtility._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: Colors.white,
      backgroundColor: Colors.black87,
      side: const BorderSide(color: Colors.black),
      padding: const EdgeInsets.symmetric(vertical: 15.0),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: Colors.black87,
      backgroundColor: Colors.white,
      side: const BorderSide(color: Colors.white),
      padding: const EdgeInsets.symmetric(vertical: 15.0),
    ),
  );
}
