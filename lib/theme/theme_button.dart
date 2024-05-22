import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/font_app.dart';
import 'package:akrilii/core/localizations_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ThemeButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String svgIcon;
  final String text;
  const ThemeButton({
    super.key,
    required this.onPressed,
    required this.svgIcon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorApp.primaryColor,
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      icon: SvgPicture.asset(
        svgIcon,
        color: ColorApp.backgroundColor,
        height: 22.h,
      ),
      label: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text.tr(context),
          style: TextStyle(
            fontFamily: FontApp.bold,
            fontSize: 20.sp,
            color: ColorApp.backgroundColor,
          ),
        ),
      ),
    );
  }
}
