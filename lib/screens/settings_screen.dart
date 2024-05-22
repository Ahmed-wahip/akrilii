import 'package:akrilii/core/color_app.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: const Center(
        child: Text("settings screen"),
      ),
    );
  }
}
