import 'package:app/features/public/splash_screen/view/button.dart';
import 'package:app/features/public/splash_screen/view/splash_screen_content.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final Widget content;
  const SplashScreen({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: SplashScreenContent()));
  }
}
