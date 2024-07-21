import 'package:akrilii/components/onbording_viow.dart';
import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/core/navigator_app.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:akrilii/data/onboarding_data.dart';

import 'package:akrilii/src/akrilii_app.dart';
import 'package:akrilii/theme/theme_animated.dart';
import 'package:akrilii/theme/theme_button.dart';
import 'package:akrilii/theme/theme_text.dart';
import 'package:akrilii/widget/decoration_bar.dart';
import 'package:akrilii/widget/indicator%20_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  bool isEnd = false;
  final pageController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const DecorationBar(viewbackButton: false),

            // Onbording viow
            PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  isEnd = onbordingItems.onbordingItems.length - 1 == value;
                  pageIndex = value;
                });
              },
              itemCount: onbordingItems.onbordingItems.length,
              itemBuilder: (context, index) {
                return OnbordingViow(
                  index: index,
                  onboardingItemsController: OnboardingItems(),
                );
              },
            ),
            // Skip Button
            Positioned(
              top: 40.h,
              right: 40.w,
              child: ThemeAnimated(
                crossFadeState: isEnd
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                secondChild: TextButton(
                  onPressed: () {
                    pageController
                        .jumpToPage(onbordingItems.onbordingItems.length - 1);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ThemeText(
                      text: "skip_msg",
                      textType: TextType.reguler,
                    ),
                  ),
                ),
              ),
            ),
            // Get started Button
            Positioned(
              bottom: 40.h,
              left: 40.w,
              right: 40.w,
              child: ThemeAnimated(
                crossFadeState: isEnd
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                firstChild: IndicatorBar(
                  pageIndex: pageIndex,
                  onPressed: () {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                ),
                secondChild: ThemeButton(
                  text: "get_started_msg",
                  svgIcon: iconApp.login,
                  onPressed: () => navigatorApp(context, const AkriliiApp()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/**
 *  // Skip Button
          Positioned(
            top: 40.h,
            right: 40.w,
            child: ThemeAnimated(
              crossFadeState:
                  isEnd ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              secondChild: TextButton(
                onPressed: () {
                  // print("Skip");
                  pageController
                      .jumpToPage(onbordingItems.onbordingItems.length - 1);
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ThemeText(
                    text: "Skip",
                    textType: TextType.description,
                  ),
                ),
              ),
            ),
          ),
 */