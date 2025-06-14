import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Summary',
            style: TextStyles.headLine16.copyWith(
              color: darkGreyTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Price',
                style: TextStyles.headLine14.copyWith(color: geryTextColor),
              ),
              Text(
                '\$ 4.53',
                style: TextStyles.headLine14.copyWith(
                  color: darkGreyTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Delivery Fee',
                style: TextStyles.headLine14.copyWith(color: geryTextColor),
              ),
              SizedBox(width: 175.w),
              Text(
                '\$ 2.0',
                style: TextStyles.headLine14.copyWith(
                  color: darkGreyTextColor,

                  decoration: TextDecoration.lineThrough,
                ),
              ),
              SizedBox(width: 13.w),
              Text(
                '\$ 1.0',
                style: TextStyles.headLine14.copyWith(
                  color: darkGreyTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
