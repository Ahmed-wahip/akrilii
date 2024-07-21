import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/theme/theme_button.dart';
import 'package:akrilii/widget/decoration_bar.dart';
import 'package:akrilii/widget/input_text.dart';
import 'package:akrilii/widget/update_user_image.dart';
import 'package:flutter/material.dart';

class PersonSettingScreen extends StatelessWidget {
  const PersonSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Expanded(
              flex: 1,
              child: DecorationBar(
                titelScreen: "person_profile_setting_msg",
                viewbackButton: true,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  UpdateUserImage(
                    onPressed: () {},
                    imageSrc: "assets/images/user-image.jpg",
                  ),
                  const InputText(
                    hintMsg: "hint_user_name_msg",
                    obscureText: false,
                    keyboardType: TextInputType.text,
                  ),
                  const InputText(
                    hintMsg: "hint_phone_numper_msg",
                    obscureText: false,
                    keyboardType: TextInputType.number,
                  ),
                  const InputText(
                    hintMsg: "hint_facebook_url",
                    obscureText: false,
                    keyboardType: TextInputType.url,
                  ),
                  const InputText(
                    hintMsg: "hint_wathsApp_url",
                    obscureText: false,
                    keyboardType: TextInputType.url,
                  ),
                  ThemeButton(
                    onPressed: () {},
                    svgIcon: iconApp.tagIcon,
                    text: "sava_msg",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
