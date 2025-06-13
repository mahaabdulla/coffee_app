import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DelivireContainer extends StatelessWidget {
  const DelivireContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 43.h,
      decoration: BoxDecoration(
        color: Color(0XFFEDEDED),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 153.w,
            height: 35.h,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                'Deliver',
                style: TextStyles.headLine16.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: 153.w,
            height: 35.h,
            decoration: BoxDecoration(
              color: Color(0XFFEDEDED),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                'Deliver',
                style: TextStyles.headLine16.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF242424),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
