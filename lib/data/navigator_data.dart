import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/model/navigator_info.dart';
import 'package:akrilii/screens/home_screen.dart';
import 'package:akrilii/screens/notifications_screen.dart';
import 'package:akrilii/screens/person_screen.dart';
import 'package:akrilii/screens/tag_screen.dart';

final navigatorBarItems = NavigatorbarItems();

class NavigatorbarItems {
  List<NavigatorInfo> navigatorItems = [
    NavigatorInfo(
      titel: "navigator_bar_info1",
      svgIcon: iconApp.homeIcon,
      screen: const HomeScreen(),
    ),
    NavigatorInfo(
      titel: "navigator_bar_info2",
      svgIcon: iconApp.notificationsIcon,
      screen: const NotificationsScreen(),
    ),
    NavigatorInfo(
      titel: "navigator_bar_info3",
      svgIcon: iconApp.personIcon,
      screen: const PersonScreen(),
    ),
    NavigatorInfo(
      titel: "navigator_bar_info4",
      svgIcon: iconApp.tagIcon,
      screen: const TagScreen(),
    ),
  ];
}
