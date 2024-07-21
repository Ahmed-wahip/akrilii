import 'package:akrilii/core/navigator_app.dart';
import 'package:akrilii/screens/add_serves_screen.dart';
import 'package:akrilii/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';

void addServes(BuildContext context, bool isUserRegester) {
  isUserRegester
      ? navigatorApp(context, const AddServerScreen())
      : navigatorApp(context, const LoginScreen());
}
