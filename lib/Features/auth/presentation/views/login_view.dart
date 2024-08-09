import 'package:flutter/material.dart';
import 'package:twseel_app/Features/auth/presentation/views/widget/if_you_have_an_account.dart';
import 'package:twseel_app/core/style/app_color.dart';
import 'package:twseel_app/core/style/font_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twseel_app/core/widget/custom_button.dart';

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
          crossAxisAlignment: CrossAxisAlignment.end,
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
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20.h,
            ),
            TextFormFieldWidget(
              controller: emailAddressController,
              label: 'كلمة المرور ',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye_outlined)),
            ),
            SizedBox(
              height: 1.h,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "هل نسيت كلمة السر ؟ ",
                  style: FontStyles.font16Weight400LightBlack.copyWith(
                    color: MyColors.orange,
                  ),
                )),
            CustomButton(
              text: "تسجيل الدخول ",
              onPressed: () {},
            ),
            IfYouHaveAnAccount(
              blackText: 'ليس لديك حساب ؟ ',
              onPressed: () {},
              orangeText: " سججل الدخول هنا  ",
            ),
          ],
        ),
      ),
    );
  }
}
