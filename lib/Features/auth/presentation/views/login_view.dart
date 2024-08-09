import 'package:flutter/material.dart';
import 'package:twseel_app/core/style/font_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widget/custom_text_form_Feild.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final TextEditingController emailAddressController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 17.w, left: 17.w, top: 100.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "اهلا وسهلا",
                style: FontStyles.font24Weight600Black,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            TextFormFieldWidget(
              controller: emailAddressController,
              label: 'البريد الالكتروني',
            )
          ],
        ),
      ),
    );
  }
}
