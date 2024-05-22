import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/localizations_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class InputText extends StatelessWidget {
  final String hintMsg;
  final bool obscureText;
  final TextInputType keyboardType;
  const InputText({
    super.key,
    required this.hintMsg,
    required this.obscureText,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: ColorApp.delicateColor,
          border: Border.all(color: ColorApp.borderColor),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            keyboardType: keyboardType,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintMsg.tr(context),
            ),
          ),
        ),
      ),
    );
  }
}
