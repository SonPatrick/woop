import 'package:flutter/material.dart';
import 'package:woop/splash_screen.dart';
import 'package:woop/styles/themes.dart';

void main() {
  runApp(MaterialApp(
    theme: theme,
    debugShowCheckedModeBanner: false,
    home: const SplashScreen(),
  ));
}
