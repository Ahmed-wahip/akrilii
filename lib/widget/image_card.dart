// ignore_for_file: deprecated_member_use

import 'package:akrilii/core/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class ImageCard extends StatelessWidget {
  final VoidCallback onPressed;
  final double? size;
  final String svgIcon;
  final Color? color;
  const ImageCard({
    super.key,
    required this.onPressed,
    this.size = 60,
    required this.svgIcon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size!.w,
      height: size!.w,
      decoration: BoxDecoration(
        color: ColorApp.delicateColor,
        border: Border.all(color: ColorApp.borderColor),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(svgIcon, color: color),
      ),
    );
  }
}
