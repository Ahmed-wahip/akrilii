import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/localizations_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerText extends StatelessWidget {
  final String text;
  const DividerText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5).w,
      child: Row(
        children: [
          Text(
            text.tr(context),
            style: TextStyle(color: ColorApp.hintColor),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Divider(color: ColorApp.hintColor),
            ),
          )
        ],
      ),
    );
  }
}
