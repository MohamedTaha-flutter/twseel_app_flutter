import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/font_style.dart';
class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 38.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 1),
                blurRadius: 1,
                color: Colors.black.withOpacity(0.25)),
          ]),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.search,color: Colors.grey,),
              SizedBox(
                width: 5.w,
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  "بحث ",
                  style: FontStyles.font16Weight400LightBlack,
                ),
              ),
              const Spacer(),
              const Icon(Icons.mic,color: Colors.grey,),

            ],
          ),
        ),
      ),
    );
  }
}
