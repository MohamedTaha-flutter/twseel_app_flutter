import 'package:flutter/material.dart';
import 'package:twseel_app/Features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:twseel_app/core/style/app_color.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    build(context) ;
    navigationToOnBoardingView(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.orange,
      body: const SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(image: AssetImage("assets/images/SBG.png")),
            )
          ],
        ),
      ),
    );
  }

  void navigationToOnBoardingView(context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const OnBoardingView()));
    });
  }
}
