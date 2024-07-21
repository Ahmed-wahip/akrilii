import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:akrilii/functions/register.dart';
import 'package:akrilii/theme/theme_button.dart';
import 'package:akrilii/theme/theme_text.dart';
import 'package:akrilii/widget/decoration_bar.dart';
import 'package:akrilii/widget/input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                children: [
                  SizedBox(height: 120.h),
                  // Welcome mas
                  const ThemeText(
                      text: "hello_msg", textType: TextType.description),
                  const ThemeText(
                      text: "register_msg", textType: TextType.description),

                  // space
                  const SizedBox(height: 30),

                  // Input user email
                  const InputText(
                    hintMsg: 'hint_emil_msg',
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                  ),

                  // space
                  const SizedBox(height: 10),

                  // Input user email
                  const InputText(
                    hintMsg: 'hint_user_name_msg',
                    obscureText: false,
                    keyboardType: TextInputType.text,
                  ),
                  // space
                  const SizedBox(height: 10),

                  // Input user phone numper
                  const InputText(
                    hintMsg: 'hint_phone_numper_msg',
                    obscureText: false,
                    keyboardType: TextInputType.number,
                  ),

                  // space
                  const SizedBox(height: 10),

                  // Input passwerd
                  const InputText(
                    hintMsg: 'hint_passwerd_msg',
                    obscureText: false,
                    keyboardType: TextInputType.text,
                  ),

                  // space
                  const SizedBox(height: 10),

                  // agen passwerd
                  const InputText(
                    hintMsg: 'hint_agen_passwerd_msg',
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),

                  // space
                  const SizedBox(height: 10),

                  // register button
                  ThemeButton(
                    onPressed: () => register(context),
                    svgIcon: iconApp.login,
                    text: "login_msg",
                  ),

                  // space
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const DecorationBar(viewbackButton: true),
          ],
        ),
      ),
    );
  }
}
