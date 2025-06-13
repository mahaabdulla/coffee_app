import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomeInfoWidget extends StatelessWidget {
  final String text;
  final String imagePath;
  const CustomeInfoWidget({
    super.key,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 26.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0XFFA2A2A2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(imagePath),
          Text(
            text,
            style: TextStyles.headLine12.copyWith(color: Color(0XFF313131)),
          ),
        ],
      ),
    );
  }
}
