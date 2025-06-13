import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:coffee_app/feature/pages/details/widgets/gery_divider.dart';

import 'package:coffee_app/feature/pages/details/widgets/component_descrption.dart';
import 'package:coffee_app/feature/pages/details/widgets/cooffee_descrption_widgets.dart';
import 'package:coffee_app/feature/pages/details/widgets/custome_buttom_sheet.dart';
import 'package:coffee_app/feature/pages/details/widgets/custome_navbar.dart';
import 'package:coffee_app/feature/pages/details/widgets/images_details.dart';
import 'package:coffee_app/feature/pages/details/widgets/size_widget.dart';
import 'package:coffee_app/feature/pages/onBoarding/widgets/brown_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 68.h),

            CustomeNavBar(),
            SizedBox(height: 24.h),
            ImageDetails(),
            SizedBox(height: 16.h),
            CoffeeDescryptionWidget(),
            SizedBox(height: 16.h),
            GeryDivider(),
            SizedBox(height: 16.h),
            ComponenetDescrption(),
            SizedBox(height: 16.h),
            SizeWidget(),
          ],
        ),
      ),
      bottomSheet: CustomeBottomSheet(),
    );
  }
}
