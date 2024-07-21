import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/font_app.dart';
import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/core/localizations_app.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:akrilii/theme/theme_normal_text.dart';
import 'package:akrilii/theme/theme_text.dart';
import 'package:akrilii/widget/loader.dart';
import 'package:akrilii/widget/svg_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

bool isOnline = true;

class ServiseCardview extends StatelessWidget {
  final String titel;
  final String imageSrc;
  final bool decrichenHight;
  final VoidCallback onPressed;
  final double price;
  const ServiseCardview({
    super.key,
    required this.titel,
    required this.decrichenHight,
    required this.imageSrc,
    required this.onPressed,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      onPressed: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160.w,
            height: decrichenHight ? 190 : 120.h,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ColorApp.backgroundColor,
              borderRadius: BorderRadius.circular(10.r),
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
              child: isOnline
                  ? Container(
                      width: 28.w,
                      height: 28.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        image: DecorationImage(
                          image: NetworkImage(imageSrc),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : Loader(
                      dotOneColor: ColorApp.auxiliaryColor,
                      dotTwoColor: ColorApp.primaryColor,
                      dotThreeColor: ColorApp.iconColor,
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              titel,
              style: TextStyle(fontFamily: FontApp.medium, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  "price_msg".tr(context),
                  style: TextStyle(fontFamily: FontApp.medium, fontSize: 17),
                ),
                Text(
                  " : $price",
                  style: TextStyle(fontFamily: FontApp.medium, fontSize: 17),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                ThemeNormalText(
                  text: "50",
                  color: ColorApp.primaryColor,
                  fontSize: 20,
                ),
                SizedBox(width: 2.w),
                const ThemeText(
                  text: "local_km_msg",
                  textType: TextType.description,
                ),
                SvgButton(svgIcon: iconApp.localIcon, onPressed: () {}),
                const Spacer(),
                SvgButton(
                  svgIcon: iconApp.tagplus,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
        ],
      ),
    );
  }
}
