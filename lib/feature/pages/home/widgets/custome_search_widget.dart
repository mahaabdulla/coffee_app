import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/png_images.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeSearchWidget extends StatelessWidget {
  const CustomeSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xff313131), Color(0xff111111)],
        ),
      ),
      width: 375.w,
      height: 280.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: TextStyles.headLine12.copyWith(
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Text(
                          'Bilzen, Tanjungbalai',
                          style: TextStyles.headLine14,
                        ),
                        SizedBox(width: 8.w),
                        Image.asset(arrowDownImage),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: TextFieldColor,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white.withOpacity(0.6),
                        size: 20.sp,
                      ),
                      hintText: 'Search coffee',
                      hintStyle: TextStyles.headLine14.copyWith(
                        color: Colors.white.withOpacity(0.6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 16.h),
                    ),
                    style: TextStyles.headLine14.copyWith(color: Colors.white),
                  ),
                ),
                SizedBox(width: 16.w),
                Container(
                  width: 52.w,
                  height: 52.h,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Center(child: Image.asset(filterImage)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
