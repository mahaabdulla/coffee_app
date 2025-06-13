import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrownButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final int withl;
  final int height;
  const BrownButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.withl,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: withl.w,
        height: height.h,
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Center(child: Text(text, style: TextStyles.headLine16Blod)),
      ),
    );
  }
}
