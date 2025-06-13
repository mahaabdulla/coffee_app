import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/fontweight.dart';
import 'package:coffee_app/core/const/png_images.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:coffee_app/core/route/route_name.dart';
import 'package:coffee_app/feature/pages/onBoarding/widgets/brown_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 530.h,
            child: Image.asset(onboardingImage, fit: BoxFit.cover),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                right: 24.w,
                top: 40.h,
                left: 24.w,
                bottom: 20.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Fall in Love with\nCoffee in Blissful\nDelight!',
                    textAlign: TextAlign.center,
                    style: TextStyles.headLine32.copyWith(fontSize: 28),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
                    textAlign: TextAlign.center,
                    style: TextStyles.headLine14,
                  ),
                  SizedBox(height: 32.h),
                  BrownButton(
                    text: 'Get Started',
                    onTap: () {
                      Navigator.pushNamed(context, HOME);
                    },
                    withl: 327,
                    height: 56,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
