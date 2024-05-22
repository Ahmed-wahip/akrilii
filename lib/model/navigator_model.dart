import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/screens/home_screen.dart';
import 'package:akrilii/screens/notifications_screen.dart';
import 'package:akrilii/screens/person_screen.dart';
import 'package:akrilii/screens/settings_screen.dart';
import 'package:flutter/cupertino.dart';

List<String> navigatorBatText = [
  "navigator_bar_info1",
  "navigator_bar_info2",
  "navigator_bar_info3",
  "navigator_bar_info4",
];
List<String> navigatorBarIcon = [
  iconApp.homeIcon,
  iconApp.notificationsIcon,
  iconApp.personIcon,
  iconApp.settingsIcon,
];

List<Widget> screenOfNavigatorBar = const [
  HomeScreen(),
  NotificationsScreen(),
  PersonScreen(),
  SettingsScreen(),
];
