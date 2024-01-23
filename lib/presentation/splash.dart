import 'dart:async';
import 'package:flutter/material.dart';
import 'package:patient_app/presentation/on_bording_screens.dart';

class SplashScreen extends StatefulWidget {
  static String tag = 'splash-screen';
  final String backgroundImagePath;
  final String centerImagePath; // Add this line

  const SplashScreen({
    Key? key,
    required this.backgroundImagePath,
    required this.centerImagePath,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => OnBoardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            // Background Image
            Image.asset(
              widget.backgroundImagePath,
              fit: BoxFit.cover,
            ),
            // Centered Image
            Center(
              child: Container(
                width: 100,
                height: 100,
                child: Image.asset(
                  widget.centerImagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
}
