// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:xo_task/views/splash_view.dart';

void main() {
  runApp(const XOGame());
}

class XOGame extends StatelessWidget {
  const XOGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
