import 'package:coffee_app/core/route/route_name.dart';
import 'package:coffee_app/feature/pages/home/home_page.dart';
import 'package:coffee_app/feature/pages/onBoarding/onboarding_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic>? generatedRoute(RouteSettings route) {
    switch (route.name) {
      case HOME:
        return MaterialPageRoute(builder: (ctx) => HomePage());
      case ONBOARDING:
        return MaterialPageRoute(builder: (ctx) => OnBoardingPage());

      default:
        return MaterialPageRoute(
          builder:
              (ctx) => Scaffold(body: Center(child: Text('الصفحة غير موجودة'))),
        );
    }
  }
}
