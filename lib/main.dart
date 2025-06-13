import 'package:coffee_app/core/route/route.dart';
import 'package:coffee_app/core/route/route_name.dart';
import 'package:coffee_app/feature/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          onGenerateRoute: AppRoute.generatedRoute,
          initialRoute: ONBOARDING,
          debugShowCheckedModeBanner: false,
          // home: const ONB(),
        );
      },
    );
  }
}
