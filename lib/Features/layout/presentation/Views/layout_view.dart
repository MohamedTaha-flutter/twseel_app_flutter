import 'package:flutter/material.dart';

import '../../../../core/style/app_color.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  offset: const Offset(0, 1),
                  color: Colors.black.withOpacity(0.25))
            ]),

        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: BottomNavigationBar(
              selectedItemColor: MyColors.orange,
              elevation: 5,
              unselectedItemColor: Colors.black,
              backgroundColor: Colors.white,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: "الرئيسيه"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.card_travel_outlined),
                    label: "الطلبات"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_2_outlined),
                    label: "الملف الشخصى"),        ],
            ),
          ),
        ),
      ),
    );
  }
}
