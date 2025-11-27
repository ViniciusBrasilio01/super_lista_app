import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primarySwatch: Colors.green,
    brightness: Brightness.light,
    fontFamily: 'Roboto',
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Roboto',
    colorScheme: ColorScheme.dark(primary: Colors.green),
  );
}