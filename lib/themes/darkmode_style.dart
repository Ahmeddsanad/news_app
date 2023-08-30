import 'dart:ui';

import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.red,
      primaryColor: isDarkTheme ? Colors.grey[700] : Colors.white,
      backgroundColor: isDarkTheme ? Colors.grey[700] : Color(0xffF1F5FB),
      indicatorColor: isDarkTheme ? Colors.grey[700] : Color(0xffCBDCF8),
      hintColor: isDarkTheme ? Colors.grey[700] : Color(0xffEECED3),
      highlightColor: isDarkTheme ? Colors.grey[700] : Color(0xffFCE192),
      hoverColor: isDarkTheme ? Colors.grey[700] : Color(0xff4285F4),
      focusColor: isDarkTheme ? Colors.grey[700] : Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      cardColor: isDarkTheme ? Colors.grey[700] : Colors.white,
      canvasColor: isDarkTheme ? Colors.grey[700] : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      appBarTheme: AppBarTheme(
        color: isDarkTheme ? Colors.grey[700] : Colors.white,
        elevation: 0.0,
      ),
      textTheme: TextTheme(),
      textSelectionTheme: TextSelectionThemeData(
          selectionColor: isDarkTheme ? Colors.white : Colors.grey[700]),
    );
  }
}
