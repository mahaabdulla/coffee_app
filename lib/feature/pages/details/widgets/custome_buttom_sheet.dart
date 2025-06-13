import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:coffee_app/core/routes/route_name.dart';
import 'package:coffee_app/feature/pages/onBoarding/widgets/brown_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeBottomSheet extends StatelessWidget {
  const CustomeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24.w, top: 16.h, right: 24.w),
      color: whiteColor,
      width: 375.w,
      height: 118.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Price',
                style: TextStyles.headLine14.copyWith(color: Color(0XFF909090)),
              ),
              Text(
                '\$ 4.53',
                style: TextStyles.headLine18.copyWith(
                  color: primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            children: [
              BrownButton(
                text: 'Buy Now',
                onTap: () {
                  Navigator.pushNamed(context, ORDER);
                },
                withl: 217,
                height: 56,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
