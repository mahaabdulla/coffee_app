import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/svg_images.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DiscuntContiner extends StatelessWidget {
  const DiscuntContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 56.h,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0XFFEDEDED)),
      ),
      child: Row(
        children: [
          SizedBox(width: 18.w),
          SvgPicture.asset(discountIconSvg),
          SizedBox(width: 18.w),
          Text(
            '1 Discount is Applies',
            style: TextStyles.headLine14.copyWith(
              color: darkGreyTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 97.w),
          SvgPicture.asset(righttIconSvg),
        ],
      ),
    );
  }
}
