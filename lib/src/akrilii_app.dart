import 'package:akrilii/bloc/navigator_bloc.dart';
import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/functions/navigator_button.dart';
import 'package:akrilii/model/navigator_model.dart';
import 'package:akrilii/widget/hader_app_bar.dart';
import 'package:akrilii/widget/navigator_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AkriliiApp extends StatelessWidget {
  const AkriliiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigatorBarBloc, NavigatorBarState>(
      builder: (context, state) {
        return Scaffold(
          appBar: hederAppBar(context),
          body: AnimatedContainer(
            duration: const Duration(seconds: 1),
            child: screenOfNavigatorBar[blocNavigator.currenIndex],
          ),
          bottomNavigationBar: Container(
            margin: const EdgeInsets.all(15),
            height: 55.5.h,
            decoration: BoxDecoration(
              color: ColorApp.backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: ColorApp.shadowColor,
                  blurRadius: 30,
                  offset: const Offset(0, 5),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.builder(
              itemCount: navigatorBarIcon.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(7.2),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => navigtorButton(context, index),
                child: NavigatorBar(
                  index: index,
                  currenIndex: blocNavigator.currenIndex,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
