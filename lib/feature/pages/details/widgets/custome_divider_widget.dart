import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeryDivider extends StatelessWidget {
  const GeryDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 295.w,
      child: Divider(color: Color(0XFFE3E3E3), thickness: 1),
    );
  }
}
