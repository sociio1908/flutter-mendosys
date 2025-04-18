import 'package:flutter/material.dart';

//15294a
class Utility {
  static Color primaryOrangeColor = const Color(0xFFff4a01);

  static Color primaryBlueColor = const Color(0xFF15294a);

  static final lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryOrangeColor,

    appBarTheme: AppBarTheme(
      backgroundColor: primaryOrangeColor,
      foregroundColor: Colors.white,
    ),

    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: primaryOrangeColor,

      elevation: 2,
      backgroundColor: Colors.white,
    ),
  );
}
