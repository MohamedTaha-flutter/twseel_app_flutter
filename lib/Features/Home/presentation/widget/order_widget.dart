import 'package:flutter/material.dart';

import '../../../../core/style/app_color.dart';
import '../../../../core/style/font_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CreateOrderWidget extends StatelessWidget {
  const CreateOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height / 7,
      decoration: BoxDecoration(
        color: MyColors.orange,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset:  const Offset(0 , 1 ),
            blurRadius: 1 ,
            color: Colors.black.withOpacity(0.25),
          ),
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 13.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "انشاء شحنة",
                  style: FontStyles.font18Weight500White,
                ),
                Text(
                  " اطلب وصل الطلبية ",
                  style: FontStyles.font16Weight400LightBlack
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 13.h),
            child: Image.asset(
              "assets/images/Crop woman receiving package.png",
              fit: BoxFit.fitHeight,
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}
