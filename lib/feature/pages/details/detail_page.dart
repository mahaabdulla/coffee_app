import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/png_images.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.white, // Assuming white background for product details
      body: Stack(
        children: [
          // Product Image - positioned at the top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 450.h, // Example height for the image
            child: Image.asset(
              caputionuImage,
              fit: BoxFit.cover,
            ), // Using caputionuImage as a placeholder
          ),
          // Back button and favorite icon
          Positioned(
            top: 40.h, // Adjust top padding as needed
            left: 24.w,
            right: 24.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 20.sp,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Detail',
                  style: TextStyles.headLine16.copyWith(color: Colors.white),
                ), // Detail text
                GestureDetector(
                  onTap: () {
                    /* Handle favorite */
                  },
                  child: Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 20.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Product Details Section - white container at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 350.h, // Example height for the details section
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Caffe Mocha',
                      style: TextStyles.headLine24.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 18.sp),
                        SizedBox(width: 4.w),
                        Text(
                          '4.8',
                          style: TextStyles.headLine14.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '(230)',
                          style: TextStyles.headLine12.copyWith(
                            color: geryTextColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo. ',
                      style: TextStyles.headLine12.copyWith(
                        color: geryTextColor,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    GestureDetector(
                      onTap: () {
                        /* Implement Read More */
                      },
                      child: Text(
                        'Read More',
                        style: TextStyles.headLine12.copyWith(
                          color: primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Text(
                      'Size',
                      style: TextStyles.headLine14.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      children: [
                        // Size buttons
                        _buildSizeButton(
                          'S',
                          isSelected: true,
                        ), // Example selected size
                        SizedBox(width: 12.w),
                        _buildSizeButton('M'),
                        SizedBox(width: 12.w),
                        _buildSizeButton('L'),
                      ],
                    ),
                    Spacer(), // Push content to top
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: TextStyles.headLine12.copyWith(
                                color: geryTextColor,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              '\\\$ 4.53',
                              style: TextStyles.headLine24.copyWith(
                                fontWeight: FontWeight.bold,
                                color: primary,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 180.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyles.headLine16.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSizeButton(String text, {bool isSelected = false}) {
    return Container(
      width: 96.w,
      height: 40.h,
      decoration: BoxDecoration(
        color:
            isSelected
                ? primary
                : const Color(0xFFF2F2F2), // Example unselected color
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: isSelected ? primary : Colors.grey.withOpacity(0.5),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyles.headLine14.copyWith(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
