import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/png_images.dart';
import 'package:coffee_app/core/const/svg_images.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:coffee_app/feature/pages/details/widgets/custome_divider_widget.dart';
import 'package:coffee_app/feature/pages/onBoarding/widgets/brown_buttom.dart';
import 'package:coffee_app/feature/pages/order/widget/add_coffee_card.dart';
import 'package:coffee_app/feature/pages/order/widget/delivre_container.dart';
import 'package:coffee_app/feature/pages/order/widget/delivry_address_widget.dart';
import 'package:coffee_app/feature/pages/order/widget/discunt_container.dart';
import 'package:coffee_app/feature/pages/order/widget/light_bowin_divider.dart';
import 'package:coffee_app/feature/pages/order/widget/navbar_widget.dart';
import 'package:coffee_app/feature/pages/order/widget/order_buttom_bar.dart';
import 'package:coffee_app/feature/pages/order/widget/payment_wigdet.dart';
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
            LightBrownDivider(),
            SizedBox(height: 16.h),
            DiscuntContiner(),
            SizedBox(height: 24.h),
            PaymentWidget(),
          ],
        ),
      ),
      bottomSheet: OrderButtomBar(),
    );
  }
}
