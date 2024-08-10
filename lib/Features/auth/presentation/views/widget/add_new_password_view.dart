import 'package:flutter/material.dart';

import '../../../../../core/style/app_color.dart';
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
              Center(
                child: Text(
                  "انشاء كلمة مرور جديدة",
                  style: FontStyles.font24Weight600Black,
                ),
              ),
              SizedBox(
                height: 38.h,
              ),
              TextFormFieldWidget(
                label: 'كلمة مرور جديدة',
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
              ),
              TextFormFieldWidget(
                label: 'تأكيد كلمة المرور',
                controller: confirmPasswordController,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 74.h,
              ),
              CustomButton(text: "حفظ", onPressed: () {}, ),
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
      ),
    );
  }
}
