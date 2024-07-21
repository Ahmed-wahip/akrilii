import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/font_app.dart';
import 'package:akrilii/core/localizations_app.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeText extends StatelessWidget {
  const ThemeText({super.key, required this.text, required this.textType});
  final String text;
  final TextType textType;

  @override
  Widget build(BuildContext context) {
    TextStyle style = const TextStyle();
    if (textType == TextType.titel) {
      style = TextStyle(
        color: ColorApp.titelColor,
        fontFamily: FontApp.bold,
        fontSize: 22.sp,
      );
    } else if (textType == TextType.description) {
      style = TextStyle(
        color: ColorApp.descriptionColor,
        fontFamily: FontApp.light,
        fontSize: 20.sp,
      );
    } else if (textType == TextType.text) {
      style = TextStyle(
        color: ColorApp.textColor,
        fontFamily: FontApp.light,
        fontSize: 20.sp,
      );
    } else if (textType == TextType.reguler) {
      style = TextStyle(
        color: ColorApp.regulerColor,
        fontFamily: FontApp.reguler,
        fontSize: 17.sp,
      );
    }

    return Text(
      textAlign: TextAlign.center,
      text.tr(context),
      style: style,
    );
  }
}
