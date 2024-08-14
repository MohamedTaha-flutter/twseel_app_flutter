import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/app_color.dart';
import '../../../../core/style/font_style.dart';
class PersonalWidget extends StatelessWidget {
  const PersonalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height / 8,
      child: Row(
        children: [
          CircleAvatar(
            radius: 30.h,
            backgroundImage: const NetworkImage(
                "https://img.freepik.com/free-photo/young-handsome-man-wearing-casual-tshirt-blue-background-happy-face-smiling-with-crossed-arms-looking-camera-positive-person_839833-12963.jpg"),
          ),
          SizedBox(
            width: 8.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("مرحبا , احمد ", style: FontStyles.font24Weight600Black),
              Text(
                " 0 دينار ",
                style: FontStyles.font16Weight400LightBlack
                    .copyWith(color: MyColors.orange, height: 1.2.h),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/mdi_bell-ring-outline.png"))
        ],
      ),
    )
    ;
  }
}
