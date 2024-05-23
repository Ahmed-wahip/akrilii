import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/size_app.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:akrilii/theme/theme_text.dart';
import 'package:akrilii/widget/decoration_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SershScreen extends StatelessWidget {
  const SershScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(
              child: DecorationBar(titelScreen: "serch_screen_titel"),
            ),
            Expanded(child: ServesInfo()),
          ],
        ),
      ),
    );
  }
}

class ServesInfo extends StatelessWidget {
  const ServesInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeApp.screenWidth! * 1,
      height: 60.h,
      child: ListTile(
        onTap: () {},
        leading: CircleAvatar(
          backgroundColor: ColorApp.primaryColor,
          child: Icon(Icons.car),
        ),
        title: const ThemeText(
          text: "serch_to_car",
          textType: TextType.reguler,
        ),
      ),
    );
  }
}
