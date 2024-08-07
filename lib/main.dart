import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twseel_app/Features/on_boarding/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // الحجم الأصلي للتصميم (العرض, الطول)
      minTextAdapt: true, // تعديل النصوص بشكل ديناميكي
      splitScreenMode: true, // دعم الشاشات المقسمة
      builder: (context, widget) {
        return MaterialApp(
          builder: (context, widget) {
            return Directionality(
                textDirection: TextDirection.ltr, child: widget!);
          },
          debugShowCheckedModeBanner: false,
          home: const SplashView(),
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            useMaterial3: false,
            fontFamily: 'Cairo',
            appBarTheme: AppBarTheme(
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w400,
                  fontSize: 20.sp),
              systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent),
              color: Colors.white,
              elevation: 0,
            ),
          ),

        );
      },
    );
  }
}
