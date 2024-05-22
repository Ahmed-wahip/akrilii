import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:akrilii/theme/theme_normal_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 150.w,
            height: 150.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.w),
              color: ColorApp.primaryColor,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.camera,
                color: ColorApp.iconColor,
                size: 25.w,
              ),
            ),
          ),
          ThemeNormalText(
            text: "User Name",
            textType: TextType.text,
            textSize: 20,
            color: ColorApp.titelColor,
          )
        ],
      ),
    );
  }
}

