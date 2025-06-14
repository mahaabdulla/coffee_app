import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/svg_images.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:coffee_app/feature/pages/onBoarding/widgets/brown_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OrderButtomBar extends StatelessWidget {
  const OrderButtomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 165.h,
      padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 16),
      child: Column(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(walletIconSvg),
              SizedBox(width: 17.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cash/Wallet',
                    style: TextStyles.headLine14.copyWith(
                      color: darkGreyTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    '\$ 5.53',
                    style: TextStyles.headLine12.copyWith(
                      color: primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 175.w),
              SvgPicture.asset(arrowDownIconSvg),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              BrownButton(text: 'Order', onTap: () {}, withl: 327, height: 56),
            ],
          ),
        ],
      ),
    );
  }
}
