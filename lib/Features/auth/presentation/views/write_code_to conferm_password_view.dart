import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../core/style/font_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WriteCodeToConfirmPassword extends StatelessWidget {
  const WriteCodeToConfirmPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          ],
        ),
      ),
    );
  }
}
