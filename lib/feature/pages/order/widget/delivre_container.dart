import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DelivireContainer extends StatefulWidget {
  const DelivireContainer({super.key});

  @override
  State<DelivireContainer> createState() => _DelivireContainerState();
}

class _DelivireContainerState extends State<DelivireContainer> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 43.h,
      decoration: BoxDecoration(
        color: const Color(0XFFEDEDED),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildOption('Deliver', 0), _buildOption('Pick up', 1)],
      ),
    );
  }

  Widget _buildOption(String text, int index) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        width: 153.w,
        height: 35.h,
        decoration: BoxDecoration(
          color: isSelected ? primary : const Color(0XFFEDEDED),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.headLine16.copyWith(
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : const Color(0XFF242424),
            ),
          ),
        ),
      ),
    );
  }
}
