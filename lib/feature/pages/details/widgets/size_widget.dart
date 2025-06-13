import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizeWidget extends StatefulWidget {
  const SizeWidget({super.key});

  @override
  State<SizeWidget> createState() => _SizeWidgetState();
}

class _SizeWidgetState extends State<SizeWidget> {
  int _selectedIndex = 1; // 0 for S, 1 for M, 2 for L

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: TextStyles.headLine16Blod.copyWith(color: darkGreyTextColor),
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildSizeOption('S', 0),
            _buildSizeOption('M', 1),
            _buildSizeOption('L', 2),
          ],
        ),
      ],
    );
  }

  Widget _buildSizeOption(String text, int index) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        width: 96.w,
        height: 41.h,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0XFFF9F2ED) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? primary : const Color(0xffE3E3E3),
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.headLine14.copyWith(
              color: isSelected ? primary : darkGreyTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
