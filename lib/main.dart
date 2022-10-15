import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:woop/splash_screen.dart';
import 'package:woop/styles/colours.dart';
import 'package:woop/styles/themes.dart';

void main() {
  //final bool isLogged = DateTime.now().second / 2 == 0;
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        systemNavigationBarColor: secondary,
        statusBarColor: secondary,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: secondary,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarContrastEnforced: true,
        systemStatusBarContrastEnforced: true),
  );
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: CustomBehavior(),
            child: child!,
          );
        },
        home: const AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(
              statusBarColor: secondary,
              statusBarIconBrightness: Brightness.light,
            ),
            child: SplashScreen()),
        theme: theme),
  );
}

class CustomBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const ClampingScrollPhysics();
}
