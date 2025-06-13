import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/png_images.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoffeeDescryptionWidget extends StatelessWidget {
  const CoffeeDescryptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Caffe Mocha',
          style: TextStyles.headLine20.copyWith(color: darkGreyTextColor),
        ),
        SizedBox(height: 4.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'Ice/Hot',
                style: TextStyles.headLine12.copyWith(color: geryTextColor),
              ),
            ),
            Spacer(),
            Row(
              children: [
                GreyContainerWidget(imagePath: delveryImage),
                SizedBox(width: 16.w),
                GreyContainerWidget(imagePath: coffeeImage),
                SizedBox(width: 16.w),
                GreyContainerWidget(imagePath: milkImage),
              ],
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            Image.asset(starIcon),
            SizedBox(width: 4.w),
            Text(
              '4.8',
              style: TextStyles.headLine14.copyWith(
                color: darkGreyTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 4.w),
            Text(
              '(280)',
              style: TextStyles.headLine14.copyWith(color: greyColor),
            ),
          ],
        ),
      ],
    );
  }
}

class GreyContainerWidget extends StatelessWidget {
  final String imagePath;
  const GreyContainerWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44.w,
      height: 44.h,
      decoration: BoxDecoration(
        color: Color(0x59EDEDED),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(imagePath),
    );
  }
}
