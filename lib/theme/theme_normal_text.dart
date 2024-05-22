import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/font_app.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeNormalText extends StatelessWidget {
  final String text;
  final Color color;
  final TextType textType;
  final double? titelSize;
  final double? textSize;
  final double? descriptionSize;
  final double? regulerSize;
  const ThemeNormalText({
    super.key,
    required this.text,
    required this.color,
    required this.textType,
    this.titelSize = 30,
    this.textSize = 25,
    this.descriptionSize = 25,
    this.regulerSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle? style;
    if (textType == TextType.titel) {
      style = TextStyle(
        color: color,
        fontFamily: FontApp.bold,
        fontSize: titelSize?.sp,
      );
    } else if (textType == TextType.description) {
      style = TextStyle(
        color: color,
        fontFamily: FontApp.light,
        fontSize: descriptionSize?.sp,
      );
    } else if (textType == TextType.text) {
      style = TextStyle(
        color: ColorApp.textColor,
        fontFamily: FontApp.light,
        fontSize: textSize?.sp,
      );
    } else if (textType == TextType.reguler) {
      style = TextStyle(
        color: color,
        fontFamily: FontApp.reguler,
        fontSize: regulerSize?.sp,
      );
    }
    return Text(
      text,
      style: style,
    );
  }
}
