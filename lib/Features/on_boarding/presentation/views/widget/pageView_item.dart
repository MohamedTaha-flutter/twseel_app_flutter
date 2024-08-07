import 'package:flutter/material.dart';
import 'package:twseel_app/core/style/font_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key});
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
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/onboarding_1.png"),
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
          "خصص طلباتك بسرعة وسلاسة",
          style: FontStyles.font24Weight600Black.copyWith(fontSize: 18.sp),
        ),
        Opacity(
          opacity: 0.8,
          child: Text(
            ".اختر المنتجات و خصص الطلبات حسب متطلباتك",
            style: FontStyles.font12Weight400Black,
          ),
        ),
        Opacity(
          opacity: 0.8,
          child: Text(
            "..احصل على اشعارات فوريه بحالة طلباتك",
            style: FontStyles.font12Weight400Black,
          ),
        ),
      ],
    );
  }
}
