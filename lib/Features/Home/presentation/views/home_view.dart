import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/style/app_color.dart';
import '../../../../core/style/font_style.dart';
import '../widget/personal_widget.dart';
import '../widget/search_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(right: 17.w, left: 17.w, top: 80.h),
      child:  Column(
        children: [
          const PersonalWidget(),
          SizedBox(height: 10.h,),
          const SearchWidget(),
          const LocationWidget()
        ],
      ),
    ));
  }
}
class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.sizeOf(context).width,
      height: 70.h,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 1,
              color: Colors.black.withOpacity(0.25),)
          ],
          borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "حدد موقعك لسرعة الوصول",
              style: FontStyles.font16Weight400LightBlack
                  .copyWith(color: MyColors.orange),
            ),
            Image.asset("assets/images/carbon_location.png")
          ],
        ),
      ),
    );
  }
}

