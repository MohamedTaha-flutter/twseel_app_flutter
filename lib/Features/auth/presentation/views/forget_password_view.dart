import 'package:flutter/material.dart';
import 'package:twseel_app/Features/auth/presentation/views/write_code_to%20conferm_password_view.dart';
import 'package:twseel_app/core/style/app_color.dart';
import 'package:twseel_app/core/style/font_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twseel_app/core/widget/custom_button.dart';
import 'package:twseel_app/core/widget/custom_text_form_Feild.dart';

class ForgetPasswordView extends StatelessWidget {
  ForgetPasswordView({super.key});


  final TextEditingController emailController = TextEditingController();

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
                "نسيت كلمة السر ؟",
                style: FontStyles.font24Weight600Black,
              ),
            ),
            TextFormFieldWidget(
              controller: emailController,
              label: "البريد الالكتروني ",
              keyboardType: TextInputType.emailAddress,
            ),
            Text(
              "يرجي ادخال البيانات 😊 ",
              style: FontStyles.font16Weight400LightBlack.copyWith(
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomButton(
              text: "تسجيبل الدخول ",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => WriteCodeToConfirmPasswordView()));
              },
            ),
            Center(
              child: TextButton(
                  onPressed: ()
                  {
                    Navigator.pop(context) ;
                  },
                  child: Text(
                    "رجوع",
                    style: FontStyles.font16Weight400LightBlack.copyWith(
                      color: MyColors.orange,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
