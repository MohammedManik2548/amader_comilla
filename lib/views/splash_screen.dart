import 'dart:async';
import 'package:flutter/material.dart';

import 'decision_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => DecisionScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          child: Image.asset(
            "images/L2.jpg",
          ),
        ),
      ),
    );
  }
}
