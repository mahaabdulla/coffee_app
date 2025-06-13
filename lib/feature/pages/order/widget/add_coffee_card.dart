import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/png_images.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCoffeeCard extends StatefulWidget {
  const AddCoffeeCard({super.key});

  @override
  State<AddCoffeeCard> createState() => _AddCoffeeCardState();
}

class _AddCoffeeCardState extends State<AddCoffeeCard> {
  int quantity = 1;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          Image.asset(caputionuImage, width: 54.w, height: 54.h),
          SizedBox(width: 16.w),
          Column(
            children: [
              Text(
                'Caffe Mocha',
                style: TextStyles.headLine16.copyWith(
                  color: darkGreyTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Deep Foam',
                style: TextStyles.headLine12.copyWith(color: Color(0XFFA2A2A2)),
              ),
            ],
          ),
          SizedBox(width: 64.w),
          GestureDetector(
            onTap: decrement,
            child: Container(
              width: 24.w,
              height: 24.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0XFFF9F2ED)),
              ),
              child: Icon(Icons.remove, color: geryTextColor, size: 16),
            ),
          ),
          SizedBox(width: 10.w),
          Container(
            width: 24.w,
            height: 24.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color(0XFFF9F2ED)),
            ),
            child: Center(
              child: Text(
                quantity.toString(),
                style: TextStyles.headLine14.copyWith(
                  color: darkGreyTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 10.w),
          GestureDetector(
            onTap: increment,
            child: Container(
              width: 24.w,
              height: 24.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0XFFF9F2ED)),
              ),
              child: Icon(Icons.add, color: darkGreyTextColor, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}
