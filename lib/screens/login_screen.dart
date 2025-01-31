import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/core/navigator_app.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:akrilii/screens/register_screen.dart';
import 'package:akrilii/theme/theme_button.dart';
import 'package:akrilii/theme/theme_text.dart';
import 'package:akrilii/widget/decoration_bar.dart';
import 'package:akrilii/widget/input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  //  Login logo
                  const Icon(
                    Icons.car_repair_outlined,
                    size: 70,
                  ),
                  // Welcome mas
                  const ThemeText(
                    text: "hello_msg",
                    textType: TextType.description,
                  ),
                  const ThemeText(
                    text: "Welcome_msg",
                    textType: TextType.reguler,
                  ),
                  // space
                  SizedBox(height: 30.h),

                  // Input user name
                  const InputText(
                    hintMsg: 'hint_emil_msg',
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                  ),

                  // space
                  SizedBox(height: 10.h),

                  // Input passwerd
                  const InputText(
                    hintMsg: 'hint_passwerd_msg',
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),

                  // forget passwerd
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 2,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          ThemeText(
                            text: "forget_passwerd_msg",
                            textType: TextType.reguler,
                          )
                        ],
                      ),
                    ),
                  ),

                  // Login button
                  ThemeButton(
                    onPressed: () {},
                    svgIcon: iconApp.login,
                    text: "login_msg",
                  ),

                  // space
                  SizedBox(height: 10.h),

                  // Register button
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 2,
                    ),
                    child: Row(
                      children: [
                        const ThemeText(
                          text: "register_text_msg",
                          textType: TextType.text,
                        ),
                        TextButton(
                          onPressed: () => navigatorApp(
                            context,
                            const RegisterScreen(),
                          ),
                          child: const ThemeText(
                            text: "register_buttom_msg",
                            textType: TextType.titel,
                          ),
                        )
                      ],
                    ),
                  )
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
