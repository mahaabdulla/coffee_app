import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/svg_images.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:coffee_app/feature/pages/order/widget/custome_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DelivryAddressWidget extends StatelessWidget {
  const DelivryAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Delivery Address',
          style: TextStyles.headLine16.copyWith(
            color: darkGreyTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.h),
        Text(
          'Jl. Kpg Sutoyo',
          style: TextStyles.headLine14.copyWith(
            color: darkGreyTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
          style: TextStyles.headLine12.copyWith(color: Color(0XFFA2A2A2)),
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            CustomeInfoWidget(text: 'Edit Address', imagePath: penIconSvg),
            SizedBox(width: 8.w),
            CustomeInfoWidget(text: 'Add Note', imagePath: documentIconSvg),
          ],
        ),
      ],
    );
  }
}
