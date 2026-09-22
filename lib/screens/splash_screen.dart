import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';

class ManSplash extends StatefulWidget {
  const ManSplash({super.key});

  @override
  State<ManSplash> createState() => ManSplashState();
}

class ManSplashState extends State<ManSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCA311),
      body: Center(child: Image.asset("assets/vn.png", color: Colors.white)),
    );
  }
}
