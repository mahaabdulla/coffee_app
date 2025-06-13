import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/svg_images.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomeNavBar extends StatefulWidget {
  const CustomeNavBar({super.key});

  @override
  State<CustomeNavBar> createState() => _CustomeNavBarState();
}

class _CustomeNavBarState extends State<CustomeNavBar> {
  bool _isHeartSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(arrowLeft),
        ),
        Text(
          'Detail',
          style: TextStyles.headLine14.copyWith(
            color: greyColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isHeartSelected = !_isHeartSelected;
            });
          },
          child: SvgPicture.asset(
            heartSvg,
            color: _isHeartSelected ? primary : greyColor,
          ),
        ),
      ],
    );
  }
}
