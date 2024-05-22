import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/localizations_app.dart';
import 'package:flutter/material.dart';

class HederTapBar extends StatelessWidget {
  const HederTapBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      dividerColor: const Color(0x00000000),
      indicatorColor: ColorApp.auxiliaryColor,
      automaticIndicatorColorAdjustment: false,
      isScrollable: true,
      padding: const EdgeInsets.all(0),
      tabAlignment: TabAlignment.center,
      tabs: [
        Tab(
          icon: Text("tap_bar_info1".tr(context)),
        ),
        Tab(
          icon: Text("tap_bar_info2".tr(context)),
        ),
        Tab(
          icon: Text("tap_bar_info3".tr(context)),
        ),
        Tab(
          icon: Text("tap_bar_info4".tr(context)),
        ),
      ],
    );
  }
}
