import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/font_app.dart';
import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/core/navigator_app.dart';

import 'package:akrilii/screens/scersh_screen.dart';
import 'package:akrilii/widget/svg_button.dart';
import 'package:flutter/material.dart';

AppBar hederAppBar(BuildContext context) {
  return AppBar(
    leading: const Padding(padding: EdgeInsets.all(0)),
    title: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "Akrilii",
        style: TextStyle(
          fontSize: 30,
          color: ColorApp.primaryColor,
          fontFamily: FontApp.bold,
        ),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            SvgButton(
              onPressed: () => navigatorApp(context, const SershScreen()),
              svgIcon: iconApp.sershIcon,
            ),
            SvgButton(
              onPressed: () {},
              svgIcon: iconApp.editIcon,
            ),
          ],
        ),
      ),
    ],
  );
}
