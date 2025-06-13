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
          padding: EdgeInsets.only(top: 63.h, right: 164.w, left: 24.w),
          child: Column(children: [NavbarWidget()]),
        ),
      ),
    );
  }
}
