import 'package:coffee_app/feature/pages/details/widgets/custome_divider_widget.dart';
import 'package:coffee_app/feature/pages/order/widget/add_coffee_card.dart';
import 'package:coffee_app/feature/pages/order/widget/delivre_container.dart';
import 'package:coffee_app/feature/pages/order/widget/delivry_address_widget.dart';
import 'package:coffee_app/feature/pages/order/widget/navbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderBody extends StatelessWidget {
  const OrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            NavbarWidget(),
            SizedBox(height: 40.h),
            DelivireContainer(),
            SizedBox(height: 24.h),
            DelivryAddressWidget(),

            SizedBox(height: 16.h),
            GeryDivider(),
            SizedBox(height: 16.h),
            AddCoffeeCard(),
            SizedBox(height: 16.h),
            SizedBox(
              width: 375.w,

              child: Divider(color: Color(0XFFF9F2ED), height: 4, thickness: 4),
            ),
          ],
        ),
      ),
    );
  }
}
