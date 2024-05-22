import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/font_app.dart';
import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/core/size_app.dart';
import 'package:akrilii/widget/svg_button.dart';
import 'package:flutter/material.dart';

AppBar hederAppBar() {
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
              onPressed: () {
                // ignore: avoid_print
                print(SizeApp.screenWidth! * 0.876);
              },
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
