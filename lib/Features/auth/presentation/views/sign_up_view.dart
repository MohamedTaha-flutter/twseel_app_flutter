import 'package:flutter/material.dart';

import '../../../../core/style/font_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              controller: nameController,
              label: 'رقم الهاتف   ',
              keyboardType: TextInputType.phone,
            ),
            TextFormFieldWidget(
              controller: emailAddressController,
              label: 'كلمة المرور  ',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: IconButton(
                  onPressed: ()
                  {
                  },
                  icon: const Icon(Icons.remove_red_eye_outlined)),
            ),
            TextFormFieldWidget(
              controller: emailAddressController,
              label: 'تأكيد  كلمة المرور  ',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: IconButton(
                  onPressed: ()
                  {
                  },
                  icon: const Icon(Icons.remove_red_eye_outlined)),
            ),
          ],
        ),
      ),
    );
  }
}
