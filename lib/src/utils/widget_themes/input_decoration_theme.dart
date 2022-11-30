import 'package:flutter/material.dart';
import 'package:kingsevent/src/constants/colors.dart';

class InputDecorationThemeUtility {
  InputDecorationThemeUtility._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: rSecondaryColor,
    floatingLabelStyle: TextStyle(color: rSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: rSecondaryColor),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: rPrimaryColor,
    floatingLabelStyle: TextStyle(color: rPrimaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: rPrimaryColor),
    ),
  );
}
