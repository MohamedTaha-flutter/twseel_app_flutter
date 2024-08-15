import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twseel_app/core/style/app_color.dart';
import '../../../../core/style/font_style.dart';
import '../widget/chosee_month_list_view_widget.dart';
import '../widget/grid_view_home_widget.dart';
import '../widget/location_widget.dart';
import '../widget/order_widget.dart';
import '../widget/personal_widget.dart';
import '../widget/search_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          right: 17.w,
          left: 17.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PersonalWidget(),
              SizedBox(
                height: 10.h,
              ),
              const SearchWidget(),
              SizedBox(
                height: 15.h,
              ),
              const LocationWidget(),
              SizedBox(
                height: 20.h,
              ),
              const CreateOrderWidget(),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "شهر سبتمبر ",
                style: FontStyles.font12Weight400Black
                    .copyWith(color: MyColors.orange, fontSize: 13.sp),
              ),
              Text(
                "الطلبات المقدمة في الفترة ما بين 1 مايو و31 مايو",
                style: FontStyles.font12Weight400Black
                    .copyWith(color: MyColors.grey80, fontSize: 13.sp),
              ),
              const ChoseMonthListViewWidget(),
              SizedBox(
                height: 10.h,
              ),
              const GridViewHomeWidget()
            ],
          ),
        ),
      ),
    ));
  }
}
