import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:coffee_app/feature/pages/order/widget/delivre_container.dart';
import 'package:coffee_app/feature/pages/order/widget/navbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderBody extends StatelessWidget {
  const OrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 63.h, left: 24.w),
          child: Column(
            children: [
              NavbarWidget(),
              SizedBox(height: 40.h),
              DelivireContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
