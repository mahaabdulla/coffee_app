import 'package:coffee_app/core/routes/route_name.dart';
import 'package:coffee_app/feature/pages/details/detail_page.dart';
import 'package:coffee_app/feature/pages/home/home_page.dart';
import 'package:coffee_app/feature/pages/map/map_page.dart';
import 'package:coffee_app/feature/pages/onBoarding/onboarding_page.dart';
import 'package:coffee_app/feature/pages/order/order_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic>? generatedRoute(RouteSettings route) {
    switch (route.name) {
      case HOME:
        return MaterialPageRoute(builder: (ctx) => HomePage());
      case ONBOARDING:
        return MaterialPageRoute(builder: (ctx) => OnBoardingPage());
      case DETAIL:
        return MaterialPageRoute(builder: (ctx) => DetailPage());
      case ORDER:
        return MaterialPageRoute(builder: (ctx) => OrderPage());
      case MAP:
        return MaterialPageRoute(builder: (ctx) => MapPage());
      default:
        return MaterialPageRoute(
          builder:
              (ctx) => Scaffold(body: Center(child: Text('الصفحة غير موجودة'))),
        );
    }
  }
}
