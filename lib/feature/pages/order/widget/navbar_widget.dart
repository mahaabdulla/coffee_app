import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/svg_images.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 64.h, left: 24.w, right: 24.w),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(arrowLeft),
          ),
          SizedBox(width: 113.w),
          Text(
            'Order',
            style: TextStyles.headLine16.copyWith(
              color: greyColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
