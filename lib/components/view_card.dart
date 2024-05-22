import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/font_app.dart';
import 'package:akrilii/widget/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewCard extends StatelessWidget {
  final String titel;
  const ViewCard({
    super.key, required this.titel,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      onPressed: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 160.w,
            height: 160.h,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ColorApp.backgroundColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: ColorApp.shadowColor,
                  offset: const Offset(0, 3),
                  blurRadius: 8,
                ),
              ],
            ),
            child: SizedBox(
              width: 30.w,
              height: 30.w,
              child: Loader(
                dotOneColor: ColorApp.auxiliaryColor,
                dotTwoColor: ColorApp.primaryColor,
                dotThreeColor: ColorApp.iconColor,
              ),
            ),
          ),
          Text(
            titel,
            style: TextStyle(
              fontFamily: FontApp.medium,
            ),
          ),
        ],
      ),
    );
  }
}
