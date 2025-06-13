import 'package:coffee_app/core/const/png_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 185.h,
      left: 24.w,
      right: 24.w,
      child: Container(
        width: 327.w,
        height: 140.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r)),
        child: Image.asset(bannerImage, fit: BoxFit.cover),
      ),
    );
  }
}
