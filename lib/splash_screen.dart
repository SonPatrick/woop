import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:woop/dashboard.dart';
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
      backgroundColor: secondary,
      body: Center(
        child: AnimatedTextKit(
          repeatForever: false,
          onFinished: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Dashboard())),
          animatedTexts: [
            WavyAnimatedText(
              speed: const Duration(milliseconds: 210),
              'Woop!',
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
          isRepeatingAnimation: false,
          onTap: () {},
        ),
      ),
    );
  }
}
