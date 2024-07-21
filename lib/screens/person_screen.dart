import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/theme/theme_icon.dart';
import 'package:akrilii/theme/theme_normal_text.dart';
import 'package:akrilii/widget/tag_divider.dart';
import 'package:akrilii/widget/user_person_image.dart';
import 'package:flutter/material.dart';

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
          UserPersonImage(imageSrc: "assets/images/user-image.jpg"),
          ThemeNormalText(
            text: "Ahmed wahip",
            color: ColorApp.titelColor,
            fontSize: 16,
          ),
          TextButton(
            onPressed: () {},
            child: ThemeNormalText(
              text: "text1234@gmail.com",
              color: ColorApp.delicateColor,
              fontSize: 15,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: ThemeNormalText(
              text: "01006310430",
              color: ColorApp.auxiliaryColor,
              fontSize: 15,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ThemeIcon(
                onPressed: () {},
                svgIcon: iconApp.faceBookIcon,
              ),
              ThemeIcon(
                onPressed: () {},
                svgIcon: iconApp.whatsappIcon,
              ),
            ],
          ),
          DividerText(text: "tap_bar_info1"),
          //

          DividerText(text: "tap_bar_info2"),
          //
          DividerText(text: "tap_bar_info3"),
          //
          DividerText(text: "tap_bar_info4"),
        ],
      ),
    );
  }
}
