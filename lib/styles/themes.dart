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
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: secondary,
    elevation: 0.0,
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: false,
    showSelectedLabels: true,
    unselectedItemColor: secondary.withOpacity(0.5),
    selectedItemColor: secondary,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    elevation: 0.5,
    backgroundColor: principal,
  ),
);
