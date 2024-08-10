import 'package:flutter/material.dart';

import '../../../../../core/style/font_style.dart';
import '../../../../../core/widget/custom_button.dart';
import '../../../../../core/widget/custom_text_form_Feild.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewPasswordView extends StatelessWidget {
   AddNewPasswordView({super.key});
  final TextEditingController confirmPasswordController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 17.w, left: 17.w, top: 150.h),
          child: Column(
            children: [
            ],
          ),
        ),
      ),
    );
  }
}
