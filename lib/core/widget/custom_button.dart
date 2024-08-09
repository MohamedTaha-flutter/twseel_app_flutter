import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twseel_app/core/style/app_color.dart';
import 'package:twseel_app/core/style/font_style.dart';
// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final String text;

  final Function() onPressed;

  double? width;

  CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.sizeOf(context).width,
      height: 50.h,
      decoration: BoxDecoration(
        color: MyColors.orange,
        borderRadius: BorderRadius.circular(8),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: FontStyles.font18Weight500White,
        ),
      ),
    );
  }
}
