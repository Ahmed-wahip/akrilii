import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/core/size_app.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:akrilii/theme/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiesSearchView extends StatelessWidget {
  final String svgIcon;
  final String titel;
  final VoidCallback onPreesd;

  const ServiesSearchView({
    super.key,
    required this.svgIcon,
    required this.titel,
    required this.onPreesd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeApp.screenWidth! * 1,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 50.h,
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
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onTap: onPreesd,
        splashColor: ColorApp.auxiliaryColor,
        leading: CircleAvatar(
          backgroundColor: ColorApp.primaryColor,
          child: SvgPicture.asset(
            svgIcon,
            height: 22.h,
            color: ColorApp.backgroundColor,
          ),
        ),
        title: ThemeText(
          text: titel,
          textType: TextType.reguler,
        ),
        trailing: SvgPicture.asset(
          iconApp.arrowLeft,
          height: 30.h,
          color: ColorApp.primaryColor,
        ),
      ),
    );
  }
}
