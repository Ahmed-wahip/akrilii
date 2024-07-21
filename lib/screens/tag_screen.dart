import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/widget/tag_divider.dart';
import 'package:flutter/material.dart';


class TagScreen extends StatelessWidget {
  const TagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
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
