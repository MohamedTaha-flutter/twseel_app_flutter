import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginByFG extends StatelessWidget {
  const LoginByFG({super.key, required this.logo, required this.onTap});
final String logo ;
final VoidCallback onTap ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 45.w,
        height: 45.h,
        decoration: BoxDecoration(
            image:  DecorationImage(//assets/images/google_logo.png
                image: AssetImage(logo,)),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 0.9, color: HexColor("#A4A4A4"))),

      ),
    );
  }
}
