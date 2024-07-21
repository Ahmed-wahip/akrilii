import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/localizations_app.dart';
import 'package:akrilii/core/size_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputText extends StatelessWidget {
  final String hintMsg;
  final bool obscureText;
  final TextInputType keyboardType;
  final int? maxLines;
  const InputText({
    super.key,
    required this.hintMsg,
    required this.obscureText,
    required this.keyboardType,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeApp.screenWidth,
      margin: EdgeInsets.symmetric(horizontal: 22.w),
      decoration: BoxDecoration(
        // color: ColorApp.auxiliaryColor.withOpacity(0.5),
        border: Border.all(color: ColorApp.primaryColor),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          keyboardType: keyboardType,
          obscureText: obscureText,
          maxLines: maxLines,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintMsg.tr(context),
          ),
        ),
      ),
    );
  }
}
