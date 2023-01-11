import 'package:bank_sha_app/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Image.asset(
          "assets/images/img_logo_dark.png",
          width: 200,
        ),
      ),
    );
  }
}
