import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twseel_app/core/style/app_color.dart';

class FontStyles {
  static TextStyle font24Weight600Black = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo',
  );
  static TextStyle font16Weight400LightBlack = TextStyle(
    color: MyColors.lightBlack,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
  );
  static TextStyle font18Weight500White = TextStyle(
    color: Colors.white,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
  );
  static TextStyle font12Weight400Black = TextStyle(
    color: Colors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
  );
}
