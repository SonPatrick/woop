import 'package:flutter/material.dart';
import 'package:woop/styles/colours.dart';

ThemeData theme = ThemeData(
  backgroundColor: backgroundLight,
  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    centerTitle: false,
    titleTextStyle: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        color: primary),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: secondary,
    elevation: 0.0,
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: true,
    showSelectedLabels: true,
    unselectedItemColor: Colors.white38,
    selectedItemColor: backgroundLight,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    elevation: 0.5,
    backgroundColor: primary,
  ),
);
