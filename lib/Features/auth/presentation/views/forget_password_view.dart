import 'package:flutter/material.dart';
import 'package:twseel_app/core/style/font_style.dart';


class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text("نسيت كلمة السر ؟",style: FontStyles.font24Weight600Black,),
          )
        ],
      ),
    );
  }
}
