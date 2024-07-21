import 'package:akrilii/components/servies_search_view.dart';
import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/core/navigator_app.dart';
import 'package:akrilii/screens/login_screen.dart';
import 'package:akrilii/screens/percon_setting_screen.dart';
import 'package:akrilii/widget/decoration_bar.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
                titelScreen: "setting_screen_titel",
                viewbackButton: true,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  ServiesSearchView(
                    onPreesd: () =>
                        navigatorApp(context, PersonSettingScreen()),
                    svgIcon: iconApp.personIcon,
                    titel: "person_profile_setting_msg",
                  ),
                  //
                  ServiesSearchView(
                    onPreesd: () {},
                    svgIcon: iconApp.languageIcon,
                    titel: "language_setting_msg",
                  ),

                  //
                  ServiesSearchView(
                    onPreesd: () {},
                    svgIcon: iconApp.contactsIcon,
                    titel: "contact_the_administrator_msg",
                  ),

                  //
                  ServiesSearchView(
                    onPreesd: () => navigatorApp(context, LoginScreen()),
                    svgIcon: iconApp.logout,
                    titel: "log_out_msg",
                  ),

                  //
                  ServiesSearchView(
                    onPreesd: () {},
                    svgIcon: iconApp.infoIcon,
                    titel: "info_app_msg",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
