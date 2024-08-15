import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/app_color.dart';
import '../../../../core/style/font_style.dart';

class ChoseMonthWidget extends StatelessWidget {
  const ChoseMonthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {

      },
      child: Container(
        width: MediaQuery.sizeOf(context).width / 3.6,
        height: 25.h,
        decoration: BoxDecoration(
          color: MyColors.orange,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          "اللشهر   الحالي ",
          style: FontStyles.font12Weight400Black.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
