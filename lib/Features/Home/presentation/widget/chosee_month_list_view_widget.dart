import 'package:flutter/material.dart';
import 'package:twseel_app/Features/Home/presentation/widget/chose_month_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ChoseMonthListViewWidget extends StatelessWidget {
  const ChoseMonthListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26.h,
      width:  MediaQuery.sizeOf(context).width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const ChoseMonthWidget(),
        separatorBuilder: (context, index) => SizedBox(
          width: 8.w,
        ),
        itemCount: 3,
      ),
    ) ;
  }
}
