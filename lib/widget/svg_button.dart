import 'package:akrilii/core/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SvgButton extends StatelessWidget {
  final String svgIcon;
  final VoidCallback onPressed;
  const SvgButton({super.key, required this.svgIcon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(0),
      onPressed: onPressed,
      icon: SvgPicture.asset(
        svgIcon,
        height: 25.w,
        color: ColorApp.iconColor,
      ),
    );
  }
}
