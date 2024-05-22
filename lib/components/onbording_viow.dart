import 'package:akrilii/core/size_app.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:akrilii/model/onboarding_items.dart';
import 'package:akrilii/theme/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnbordingViow extends StatelessWidget {
  const OnbordingViow({
    super.key,
    required this.index,
    required this.onboardingItemsController,
  });

  final int index;
  final OnboardingItems onboardingItemsController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          onboardingItemsController.onbordingItems[index].image,
          height: SizeApp.screenHeight! * .30.h,
        ),
        ThemeText(
            text: onboardingItemsController.onbordingItems[index].titel,
            textType: TextType.titel),
        SizedBox(height: 10.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: ThemeText(
            text: onboardingItemsController.onbordingItems[index].description,
            textType: TextType.description,
          ),
        ),
      ],
    );
  }
}
