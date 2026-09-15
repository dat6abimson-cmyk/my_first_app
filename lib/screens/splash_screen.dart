import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';

class ManSplash extends StatefulWidget {
  const ManSplash({super.key});

  @override
  State<ManSplash> createState() => _ManSplashState();
}

class _ManSplashState extends State<ManSplash> {
  @override
  void initState() {
    super.initState();
    _openHomeScreen();
  }

  Future<void> _openHomeScreen() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    if (!mounted) return;

    Navigator.of(context).pushReplacement(
      MaterialPageRoute<void>(builder: (_) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
