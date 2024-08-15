import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/app_color.dart';
import '../../../../core/style/font_style.dart';

class ChoseMonthWidget extends StatefulWidget {
  const ChoseMonthWidget({super.key});

  @override
  State<ChoseMonthWidget> createState() => _ChoseMonthWidgetState();
}

class _ChoseMonthWidgetState extends State<ChoseMonthWidget> {

  bool isChose = false ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {setState(() {
        isChose = !isChose ;
      });
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width / 3.5,
        height: 30.h,
        decoration: BoxDecoration(
            color: isChose ?  Colors.white : MyColors.orange ,
            borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 1),
                blurRadius: 0.2,
                color: Colors.black.withOpacity(0.25))
          ],
        ),
        child: Text(
          "اللشهر   الحالي ",
          style: FontStyles.font12Weight400Black.copyWith(
            color: isChose ? MyColors.orange : Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
