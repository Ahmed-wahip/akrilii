import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/size_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeDropdownButton extends StatelessWidget {
  const ThemeDropdownButton({
    super.key,
    required this.hintText,
    required this.onChanged,
    required this.items,
  });
  final String hintText;
  final void Function(String?)? onChanged;
  final List<DropdownMenuItem<String>>? items;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeApp.screenWidth,
      margin: EdgeInsets.symmetric(horizontal: 22.w),
      decoration: BoxDecoration(
        color: ColorApp.backgroundColor.withOpacity(0.5),
        border: Border.all(color: ColorApp.primaryColor),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: DropdownButton(
        hint: Text(hintText),
        isExpanded: true,
        iconSize: 30.0,
        items: items,
        borderRadius: BorderRadius.circular(12.r),
        underline: SizedBox(),
        onChanged: onChanged,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
      ),
    );
  }
}
