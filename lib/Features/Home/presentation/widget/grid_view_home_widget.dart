import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/app_color.dart';
import '../../../../core/style/font_style.dart';

class GridViewHomeWidget extends StatelessWidget {
  const GridViewHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10.h,
        childAspectRatio: 1.5,
        crossAxisSpacing: 7.w,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 9,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: MyColors.orange,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "5",
                  style: FontStyles.font18Weight500White
                      .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w700),
                ),
                Text(
                  "مؤجل",
                  style: FontStyles.font12Weight400Black
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
