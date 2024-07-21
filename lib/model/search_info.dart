import 'package:akrilii/core/icon_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchInfo extends StatelessWidget {
  final String text;
  final String description;
  const SearchInfo({
    super.key,
    required this.text,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(iconApp.carIconSearch),
      title: Text(text),
      subtitle: Text(description),
    );
  }
}