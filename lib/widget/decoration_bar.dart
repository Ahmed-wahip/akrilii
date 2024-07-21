import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/core/localizations_app.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:akrilii/theme/theme_text.dart';
import 'package:akrilii/widget/svg_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DecorationBar extends StatelessWidget {
  final String? titelScreen;
  final bool viewbackButton;
  const DecorationBar({
    super.key,
    this.titelScreen = "",
    required this.viewbackButton,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0.h,
          left: 0.w,
          child: Container(
            width: 150.w,
            height: 75.h,
            decoration: BoxDecoration(
              color: ColorApp.auxiliaryColor.withOpacity(0.7),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(1000),
                bottomRight: Radius.circular(1000),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0.h,
          left: 0.w,
          child: Container(
            width: 75.w,
            height: 150.h,
            decoration: BoxDecoration(
              color: ColorApp.auxiliaryColor.withOpacity(0.7),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(1000.r),
                bottomRight: Radius.circular(1000.r),
              ),
            ),
          ),
        ),
        Positioned(
          top: 90.h,
          right: 10.w,
          child: ThemeText(
            text: titelScreen!,
            textType: TextType.description,
          ),
        ),
        Positioned(
          top: 10.h,
          right: 10.w,
          child: viewbackButton
              ? Container(
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
                  child: SvgButton(
                    svgIcon: iconApp.arrowRight.tr(context),
                    onPressed: () => Navigator.pop(context),
                  ),
                )
              : Container(),
        ),
      ],
    );
  }
}
