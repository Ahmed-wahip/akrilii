import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/font_app.dart';
import 'package:akrilii/core/localizations_app.dart';
import 'package:akrilii/data/navigator_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NavigatorBar extends StatelessWidget {
  final int index, currenIndex;
  const NavigatorBar({
    super.key,
    required this.index,
    required this.currenIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.fastLinearToSlowEaseIn,
          width: index == currenIndex ? 115.2.w : 64.8.w,
          alignment: Alignment.center,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn,
            height: index == currenIndex ? 43.1.h : 0,
            width: index == currenIndex ? 115.2.w : 0,
            decoration: BoxDecoration(
              color: index == currenIndex
                  ? ColorApp.primaryColor.withOpacity(.2)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.fastLinearToSlowEaseIn,
          // width: index == currenIndex ? 111.6.w : 64.8.w,
          alignment: Alignment.center,
          child: Stack(
            children: [
              Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == currenIndex ? 46.80.w : 0,
                  ),
                  AnimatedOpacity(
                    opacity: index == currenIndex ? 1 : 0,
                    duration: const Duration(seconds: 1),
                    child: SmoilText(
                      text: index == currenIndex
                          ? navigatorBarItems.navigatorItems[index].titel
                          : "",
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    // width: index == currenIndex ? 10.79.w : 90.80.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset(
                      navigatorBarItems.navigatorItems[index].svgIcon,
                      height: 25.h,
                      color: index == currenIndex
                          ? ColorApp.primaryColor
                          : ColorApp.iconColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SmoilText extends StatelessWidget {
  const SmoilText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr(context),
      style: TextStyle(
        color: ColorApp.primaryColor,
        fontSize: 17.dm,
        fontWeight: FontWeight.w600,
        fontFamily: FontApp.medium,
      ),
    );
  }
}
