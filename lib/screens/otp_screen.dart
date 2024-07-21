import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/image_app.dart';
import 'package:akrilii/core/size_app.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:akrilii/theme/theme_text.dart';
import 'package:akrilii/widget/decoration_bar.dart';
import 'package:akrilii/widget/input_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 150.h),
                  const ThemeText(
                    text: "otp_description",
                    textType: TextType.reguler,
                  ),
                  const ThemeText(
                    text: "otp_enter",
                    textType: TextType.reguler,
                  ),
                  SizedBox(height: 30.h),
                  const OtpForm(),
                  SizedBox(
                    height: 70.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorApp.primaryColor,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(3.0),
                            child: ThemeText(
                              text: "next_otp",
                              textType: TextType.description,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Padding(
                            padding: EdgeInsets.all(3.0),
                            child: ThemeText(
                              text: "cancel_otp",
                              textType: TextType.description,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: SizeApp.screenWidth,
                    child: SvgPicture.asset(
                      imageApp.enterOtp,
                      height: SizeApp.screenHeight! / 3.h,
                    ),
                  ),
                ],
              ),
            ),
            const DecorationBar(
              viewbackButton: false,
              titelScreen: "otp_welcome_screen",
            ),
          ],
        ),
      ),
    );
  }
}

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InputOtp(),
          InputOtp(),
          InputOtp(),
          InputOtp(),
        ],
      ),
    );
  }
}
