import 'package:flutter/material.dart';
import 'package:twseel_app/Features/auth/presentation/views/widget/if_you_have_an_account.dart';
import 'package:twseel_app/Features/auth/presentation/views/widget/login_by_F_G.dart';

import '../../../../core/style/font_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widget/custom_button.dart';
import '../../../../core/widget/custom_text_form_Feild.dart';

class SignUpView extends StatelessWidget {
   SignUpView({super.key});
  final TextEditingController emailAddressController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 17.w, left: 17.w, top: 100.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  "مرحبا ",
                  style: FontStyles.font24Weight600Black,
                ),
              ),
              TextFormFieldWidget(
                controller: nameController,
                label: 'الاسم  ',
                keyboardType: TextInputType.text,
              ),
              TextFormFieldWidget(
                controller: emailAddressController,
                label: ' البريد الالكتروني  ',
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormFieldWidget(
                controller: phoneController,
                label: 'رقم الهاتف   ',
                keyboardType: TextInputType.phone,
              ),
              TextFormFieldWidget(
                controller: passwordController,
                label: 'كلمة المرور  ',
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: IconButton(
                    onPressed: ()
                    {
                    },
                    icon: const Icon(Icons.remove_red_eye_outlined)),
              ),
              TextFormFieldWidget(
                controller: confirmPasswordController,
                label: 'تأكيد  كلمة المرور  ',
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: IconButton(
                    onPressed: ()
                    {
                    },
                    icon: const Icon(Icons.remove_red_eye_outlined)),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                text: " انشاء حساب ",
                onPressed: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              IfYouHaveAnAccount(
                blackText: ' لديك حساب ؟ ',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  SignUpView()));
                },
                orangeText: " سججل الدخول هنا  ",
              ),
              SizedBox(
                height: 25.h,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginByFG(
                        logo: "assets/images/google_logo.png",
                        onTap: () {}),
                    SizedBox(
                      width: 15.w,
                    ),
                    LoginByFG(
                        logo: "assets/images/face_book_logo.png",
                        onTap: () {}),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
