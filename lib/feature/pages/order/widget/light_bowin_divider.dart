import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LightBrownDivider extends StatelessWidget {
  const LightBrownDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375.w,
      child: Divider(color: Color(0XFFF9F2ED), height: 4, thickness: 4),
    );
  }
}
