import 'package:akrilii/core/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserPersonImage extends StatelessWidget {
  final String imageSrc;
  const UserPersonImage({
    super.key,
    required this.imageSrc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.w),
        color: ColorApp.primaryColor,
        image: DecorationImage(
          image: AssetImage(imageSrc),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}