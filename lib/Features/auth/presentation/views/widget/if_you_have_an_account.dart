import 'package:flutter/material.dart';
import 'package:twseel_app/core/style/font_style.dart';

import '../../../../../core/style/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class IfYouHaveAnAccount extends StatelessWidget {
  const IfYouHaveAnAccount(
      {super.key,
      required this.blackText,
      required this.orangeText,
      required this.onPressed});

  final String blackText;

  final String orangeText;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: onPressed,
            child:Text(
              orangeText,
              style: FontStyles.font16Weight400LightBlack
                  .copyWith(color: MyColors.orange, fontSize: 14.sp),
            ),
          ),
          Text(
            blackText,
            style: FontStyles.font12Weight400Black,
          ),

        ],
      ),
    );
  }
}
