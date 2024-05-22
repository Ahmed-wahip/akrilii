import 'package:akrilii/core/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ThemeIcon extends StatelessWidget {
  const ThemeIcon({super.key, required this.onPressed, required this.svgIcon});
  final VoidCallback onPressed;
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: ColorApp.primaryColor,
      child: IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          svgIcon,
          height: 20.h,
          color: ColorApp.backgroundColor,
        ),
      ),
    );
  }
}
