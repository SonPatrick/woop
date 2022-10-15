import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:woop/styles/colours.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundLight,
      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText('Woop'),
          ],
          isRepeatingAnimation: true,
          onTap: () {},
        ),
      ),
    );
  }
}
