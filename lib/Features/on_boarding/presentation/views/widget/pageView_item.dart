import 'package:flutter/material.dart';
import 'package:twseel_app/Features/on_boarding/presentation/data/models/onBoarding_model.dart';
import 'package:twseel_app/core/style/font_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height / 1.7,
              decoration:  BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(onboardingModel.imagePath),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25.h),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "تخطي",
                    style: FontStyles.font18Weight500White,
                  )),
            )
          ],
        ),
        Text(
          onboardingModel.label,
          style: FontStyles.font24Weight600Black.copyWith(fontSize: 18.sp),
        ),
        Opacity(
          opacity: 0.8,
          child: Text(
            onboardingModel.firstText,
            style: FontStyles.font12Weight400Black,
          ),
        ),
        Opacity(
          opacity: 0.8,
          child: Text(
            onboardingModel.secondText,
            style: FontStyles.font12Weight400Black,
          ),
        ),
      ],
    );
  }
}
