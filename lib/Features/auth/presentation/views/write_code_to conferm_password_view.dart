import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../core/style/app_color.dart';
import '../../../../core/style/font_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../../core/widget/custom_button.dart';

class WriteCodeToConfirmPasswordView extends StatelessWidget {
  const WriteCodeToConfirmPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 17.w, left: 17.w, top: 100.h),
        child: Column(
          children: [
            Center(
              child: Text(
                "اكتب الكود !",
                style: FontStyles.font24Weight600Black,
              ),
            ),
            Center(
              child: Text(
                "لقد أرسلنا كود اليك خلال رساله نصيه",
                style: FontStyles.font16Weight400LightBlack
                    .copyWith(color: HexColor("#8D8383")),
              ),
            ),
            SizedBox(
              height: 48.h,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: OtpTextField(
                numberOfFields: 4,
                fieldHeight: 48.h,
                fieldWidth: 48.h,
                cursorColor: MyColors.orange,
                contentPadding: const EdgeInsets.all(2),
                focusedBorderColor: MyColors.orange,
                showFieldAsBox: true,
              ),
            ),
            SizedBox(
              height: 48.h,
            ),
            CustomButton(
                text: "تأكيد",
                onPressed: () {
                }),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ارسال مرة أخرى خلال",
                  style: FontStyles.font16Weight400LightBlack.copyWith(
                      color: MyColors.orange,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: TimerCountdown(
                    format: CountDownTimerFormat.minutesSeconds,
                    enableDescriptions: false,
                    timeTextStyle: FontStyles.font16Weight400LightBlack
                        .copyWith(
                        color: Colors.grey,
                        decoration: TextDecoration.underline),
                    spacerWidth: 3,
                    endTime: DateTime.now().add(
                      const Duration(
                        seconds: 60,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
