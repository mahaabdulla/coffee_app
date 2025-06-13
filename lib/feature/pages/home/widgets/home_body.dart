import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/png_images.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:coffee_app/feature/pages/home/widgets/custome_blak_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [greyColor, blckColor],
            ),
          ),
          child: Column(
            children: [
              CustomeBlakConatiner(),

              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 24.w),
              //   child: Container(
              //     width: double.infinity,
              //     height: 150.h, // Example height for the banner
              //     decoration: BoxDecoration(
              //       color: const Color(
              //         0xFF262B34,
              //       ), // A placeholder color for the banner background
              //       borderRadius: BorderRadius.circular(16.r),
              //       image: const DecorationImage(
              //         image: AssetImage(bannerImage),
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 24.h),

              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: whiteColor),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (ctx, index) {
                            return Card(child: Text('yy'));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
