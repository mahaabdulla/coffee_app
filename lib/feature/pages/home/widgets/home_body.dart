import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:coffee_app/feature/pages/home/widgets/custome_horizantil_widget.dart';
import 'package:coffee_app/feature/pages/home/widgets/custome_search_widget.dart';
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
              CustomeSearchWidget(),

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
                      SizedBox(height: 120.h),
                      CustomeHorizantlScroolWidget(
                        items: const [
                          'All Coffee',
                          'Machiato',
                          'Latte',
                          'Americano',
                        ],
                      ),
                      SizedBox(height: 16.h),
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 16.w, // Add spacing
                                mainAxisSpacing: 16.h, // Add spacing
                                childAspectRatio: 0.8,
                              ),
                          itemCount: 6, // Example item count
                          itemBuilder: (ctx, index) {
                            return Card(child: Text('Coffee Item'));
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
