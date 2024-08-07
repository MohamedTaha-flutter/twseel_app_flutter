import 'package:flutter/material.dart';
import 'package:twseel_app/Features/auth/presentation/views/login_view.dart';
import 'package:twseel_app/Features/on_boarding/presentation/views/widget/pageView_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twseel_app/core/style/app_color.dart';
import '../../../../core/widget/custom_button.dart';
import '../../data/models/onBoarding_model.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController pageController = PageController();
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return PageViewItem(
                    onboardingModel: onBoarding[index],
                  );
                },
                itemCount: 2,
                physics: const BouncingScrollPhysics(),
                controller: pageController,
                onPageChanged: (index) {
                  if (index == onBoarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  }
                },
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomButton(
              text: 'التالي',
              onPressed: () {
                if (isLast) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const LoginView()));
                }
                pageController.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeIn,
                );
              },
              width: 235.w,
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              width: 175.w,
              height: 8,
              decoration: BoxDecoration(
                color: isLast ? MyColors.orange : Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Container(
                    width: 90.w,
                    height: 8,
                    decoration: BoxDecoration(
                      color: MyColors.orange,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }

  List<OnboardingModel> onBoarding = [
    OnboardingModel(
        imagePath: 'assets/images/onboarding_1.png',
        label: "خصص طلباتك بسرعة وسلاسة",
        firstText: ".اختر المنتجات و خصص الطلبات حسب متطلباتك",
        secondText: ".احصل على اشعارات فوريه بحالة طلباتك"),
    OnboardingModel(
        imagePath: 'assets/images/onboarding_2.png',
        label: "تداول وشارك الطلبات بكل سهولة",
        firstText: ".شارك الطلبات مع المندوب و المتجر بسهوله",
        secondText: ".تابع حالة الطلبات وتداول المنتجات بسرعه وفعاليه")
  ];
}
