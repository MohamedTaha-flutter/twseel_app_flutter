import 'package:flutter/material.dart';
import 'package:twseel_app/core/style/app_color.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.orange,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text("SBG"),
            )
          ],
        ),
      ),
    );
  }
}
