import 'package:flutter/material.dart';
import 'package:twseel_app/Features/on_boarding/presentation/data/models/onBoarding_model.dart';
import 'package:twseel_app/Features/on_boarding/presentation/views/widget/pageView_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widget/custom_button.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
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
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomButton(
              text: 'التالي',
              onPressed: () {},
              width: 235.w,
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
