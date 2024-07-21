import 'package:akrilii/functions/search_to_car.dart';
import 'package:akrilii/functions/search_to_house.dart';
import 'package:akrilii/functions/search_to_jops.dart';
import 'package:akrilii/components/servies_search_view.dart';
import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/widget/decoration_bar.dart';
import 'package:flutter/material.dart';

class SershScreen extends StatelessWidget {
  const SershScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: DecorationBar(
                titelScreen: "serch_screen_titel",
                viewbackButton: true,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ServiesSearchView(
                    titel: "serch_to_car",
                    onPreesd: () => searchToCar(context),
                    svgIcon: iconApp.carIconSearch,
                  ),
                  ServiesSearchView(
                    titel: "serch_to_house",
                    onPreesd: () => searchToHouse(context),
                    svgIcon: iconApp.houseIconSearch,
                  ),
                  ServiesSearchView(
                    titel: "serch_to_jops",
                    onPreesd: () => searchToJops(context),
                    svgIcon: iconApp.jopsIconSearch,
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
