import 'package:akrilii/core/font_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeNormalText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight? fontWeight;

  const ThemeNormalText({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: FontApp.medium,
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
      ),
    );
  }
}
