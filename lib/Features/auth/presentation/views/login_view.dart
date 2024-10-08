import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twseel_app/Features/auth/presentation/manage/cubit/logic.dart';
import 'package:twseel_app/Features/auth/presentation/manage/cubit/state.dart';
import 'package:twseel_app/Features/auth/presentation/views/forget_password_view.dart';
import 'package:twseel_app/Features/auth/presentation/views/sign_up_view.dart';
import 'package:twseel_app/Features/auth/presentation/views/widget/if_you_have_an_account.dart';
import 'package:twseel_app/Features/auth/presentation/views/widget/login_by_F_G.dart';
import 'package:twseel_app/core/style/app_color.dart';
import 'package:twseel_app/core/style/font_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twseel_app/core/widget/custom_button.dart';

import '../../../../core/widget/custom_text_form_Feild.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final formKey = GlobalKey<FormState>();

  final TextEditingController emailAddressController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = LoginCubit.get(context);
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.only(right: 17.w, left: 17.w, top: 100.h),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                      controller: emailAddressController,
                      label: 'البريد الالكتروني',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormFieldWidget(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                      controller: passwordController,
                      label: 'كلمة المرور ',
                      isPassword: cubit.visiblePassword,
                      keyboardType: TextInputType.visiblePassword,
                      suffixIcon: IconButton(
                          onPressed: () {
                            cubit.changeVisiblePassword();
                          },
                          icon: const Icon(Icons.remove_red_eye_outlined)),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ForgetPasswordView(),
                            ),
                          );
                        },
                        child: Text(
                          "هل نسيت كلمة السر ؟ ",
                          style: FontStyles.font16Weight400LightBlack.copyWith(
                            color: MyColors.orange,
                          ),
                        )),
                    CustomButton(
                      text: "تسجيل الدخول ",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {}
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    IfYouHaveAnAccount(
                      blackText: 'ليس لديك حساب ؟ ',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpView()));
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
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
