import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ComponenetDescrption extends StatelessWidget {
  const ComponenetDescrption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyles.headLine14.copyWith(
            fontWeight: FontWeight.bold,
            color: darkGreyTextColor,
          ),
        ),
        SizedBox(height: 8.h),
        RichText(
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            text:
                'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ',
            style: TextStyles.headLine12.copyWith(color: geryTextColor),
            children: [
              TextSpan(
                text: 'Read More',
                style: TextStyles.headLine12.copyWith(
                  color: primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
