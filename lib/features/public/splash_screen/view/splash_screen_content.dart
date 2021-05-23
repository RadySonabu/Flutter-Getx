import 'package:app/features/public/splash_screen/view/button.dart';
import 'package:flutter/material.dart';

import '../splash_screen.dart';

class SplashScreenContent extends StatelessWidget {
  const SplashScreenContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text('This is the splash screen'), SubmitButton()],
      ),
    );
  }
}
