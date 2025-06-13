import 'package:coffee_app/core/const/colors.dart';
import 'package:coffee_app/core/const/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeHorizantilScroolWidget extends StatefulWidget {
  final List<String> items;
  const CustomeHorizantilScroolWidget({super.key, required this.items});

  @override
  State<CustomeHorizantilScroolWidget> createState() =>
      _CustomeHorizantilScroolWidgetState();
}

class _CustomeHorizantilScroolWidgetState
    extends State<CustomeHorizantilScroolWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SizedBox(
        height: 50.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.items.length,
          itemBuilder: (ctx, index) {
            final bool isSelected = _selectedIndex == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Container(
                width: 87.w,
                height: 29.h,
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: isSelected ? primary : const Color(0X59EDEDED),
                ),
                child: Center(
                  child: Text(
                    widget.items[index],
                    style: TextStyles.headLine14.copyWith(
                      color: isSelected ? Colors.white : geryTextColor,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
