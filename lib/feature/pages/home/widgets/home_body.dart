import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/png_images.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blckColor,
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Text('Location', style: TextStyles.headLine12),
                Row(
                  children: [
                    Text('Bilzen, Tanjungbalai', style: TextStyles.headLine14),
                    Image.asset(arrowDownImage),
                  ],
                ),
                SizedBox(height: 153.h),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 24.w),
                      width: 259.w,
                      height: 52,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 17,
                          ),
                          hintText: 'Search coffee',
                          hintStyle: TextStyles.headLine14,
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        width: 52.w,
                        height: 52.h,
                        decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(filterImage),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
