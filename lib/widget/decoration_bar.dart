import 'package:akrilii/core/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DecorationBat extends StatelessWidget {
  const DecorationBat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0.h,
          left: 0.w,
          child: Container(
            width: 150.w,
            height: 75.h,
            decoration: BoxDecoration(
              color: ColorApp.auxiliaryColor.withOpacity(0.7),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(1000),
                bottomRight: Radius.circular(1000),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0.h,
          left: 0.w,
          child: Container(
            width: 75.w,
            height: 150.h,
            decoration: BoxDecoration(
              color: ColorApp.auxiliaryColor.withOpacity(0.7),
              borderRadius:  BorderRadius.only(
                topRight: Radius.circular(1000.r),
                bottomRight: Radius.circular(1000.r),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
