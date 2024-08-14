import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/location_widget.dart';
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

