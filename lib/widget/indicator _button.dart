// ignore_for_file: file_names

import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/core/localizations_app.dart';
import 'package:akrilii/data/onboarding_data.dart';
import 'package:akrilii/theme/theme_icon.dart';
import 'package:akrilii/widget/dot_indicator.dart';
import 'package:flutter/cupertino.dart';

class IndicatorBar extends StatelessWidget {
  const IndicatorBar({
    super.key,
    required this.onPressed,
    required this.pageIndex,
  });
  final VoidCallback onPressed;
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ...List.generate(
          onbordingItems.onbordingItems.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 4),
            child: DotIndicator(isActive: index == pageIndex),
          ),
        ),
        const Spacer(),
        ThemeIcon(onPressed: onPressed, svgIcon: iconApp.arrowLeft.tr(context))
      ],
    );
  }
}
