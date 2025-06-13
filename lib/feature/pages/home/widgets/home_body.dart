import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/png_images.dart';
import 'package:coffee_app/core/const/svg_images.dart';
import 'package:coffee_app/feature/pages/home/widgets/banner_widget.dart';
import 'package:coffee_app/feature/pages/home/widgets/custome_gridview_coffee.dart';
import 'package:coffee_app/feature/pages/home/widgets/custome_horizantil_widget.dart';
import 'package:coffee_app/feature/pages/home/widgets/custome_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                CustomeSearchWidget(),
                SizedBox(height: 100.h),
                Expanded(
                  child: Container(
                    width: 375.w,
                    decoration: BoxDecoration(color: whiteColor),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomeHorizantilScroolWidget(
                            items: const [
                              'All Coffee',
                              'Machiato',
                              'Latte',
                              'Americano',
                            ],
                          ),
                          SizedBox(height: 24.h),
                          CustomeGradViewCoffee(
                            coffeeImages: const [
                              caputionuImage,
                              latteImage,
                              coffee3Image,
                              coffee4Image,
                              caputionuImage,
                              latteImage,
                            ],
                            coffeeNames: const [
                              'Caffe Mocha',
                              'Flat White',
                              'Caffe Latte',
                              'Americano',
                              'Espresso',
                              'Cappuccino',
                            ],
                          ),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            BannerWidget(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 99.h,
          width: 375.w,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(homeSvg, 0),
              _buildNavItem(heartSvg, 1),
              _buildNavItem(bagSvg, 2),
              _buildNavItem(notifivationSvg, 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(String imagPath, int index) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imagPath,
            color: isSelected ? primary : geryTextColor,
          ),
          SizedBox(height: 4.h),
          if (isSelected)
            Container(
              width: 20.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
        ],
      ),
    );
  }
}
