import 'package:coffee_app/core/const/svg_images.dart';
import 'package:coffee_app/feature/pages/map/cubit/map_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapBody extends StatelessWidget {
  const MapBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapCubit(),
      child: BlocBuilder<MapCubit, MapState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              body: Column(
                children: [
                  SizedBox(
                    width: 375.w,
                    height: 490.h,
                    child: Image.asset('assets/png_images/Maps.png'),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                              vertical: 8.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap:
                                      () =>
                                          context
                                              .read<MapCubit>()
                                              .navigateBack(),
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    width: 44.w,
                                    height: 44.h,
                                    decoration: BoxDecoration(
                                      color: Color(0XFFededed),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: SvgPicture.asset(
                                      arrowLeft,
                                      width: 24.w,
                                      height: 24.h,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap:
                                      () =>
                                          context
                                              .read<MapCubit>()
                                              .getCurrentLocation(),
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    width: 44.w,
                                    height: 44.h,
                                    decoration: BoxDecoration(
                                      color: Color(0XFFededed),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: SvgPicture.asset(
                                      gpsIconSvg,
                                      width: 24.w,
                                      height: 24.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
