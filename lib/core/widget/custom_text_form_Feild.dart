import 'package:flutter/material.dart';
import 'package:twseel_app/core/style/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twseel_app/core/style/font_style.dart';

// ignore: must_be_immutable
class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    required this.label,
    this.validator,
    this.suffixIcon,
    this.onSubmitted,
    this.isPassword = false,
  });

  final bool isPassword;

  final String label;
  Widget? suffixIcon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 10.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                label,
                style: FontStyles.font16Weight400LightBlack,
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: TextFormField(
                obscureText: isPassword,
                controller: controller,
                onFieldSubmitted: onSubmitted,
                validator: validator,
                keyboardType: keyboardType,
                onChanged: onChanged,
                decoration: InputDecoration(
                  suffixIcon: suffixIcon,
                  errorStyle:  FontStyles.font12Weight400Black.copyWith(color: Colors.red),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: MyColors.grey80),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: MyColors.grey80),
                    borderRadius: BorderRadius.circular(8),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
