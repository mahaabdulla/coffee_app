import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:coffee_app/core/routes/route_name.dart';
import 'package:coffee_app/feature/pages/home/widgets/image_widget.dart';
import 'package:coffee_app/feature/pages/home/widgets/price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeGradViewCoffee extends StatelessWidget {
  final List<String> coffeeImages;
  final List<String> coffeeNames;
  const CustomeGradViewCoffee({
    super.key,
    required this.coffeeImages,
    required this.coffeeNames,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.h,
          childAspectRatio: 0.6,
        ),
        itemCount: coffeeImages.length,
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, DETAIL);
            },
            child: Container(
              width: 156.w,
              height: 270.h,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 252, 252, 252),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 128,
                    child: ImageWidget(imagePath: coffeeImages[index]),
                  ),
                  Expanded(
                    flex: 100,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 8.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            coffeeNames[index],
                            style: TextStyles.headLine14.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'Deep Foam',
                            style: TextStyles.headLine12.copyWith(
                              color: geryTextColor,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          PriceWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
