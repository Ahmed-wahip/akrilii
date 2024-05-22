import 'package:akrilii/components/home_page_1.dart';
import 'package:akrilii/components/home_page_2.dart';
import 'package:akrilii/components/home_page_3.dart';
import 'package:akrilii/components/home_page_4.dart';
import 'package:akrilii/widget/heder_tap_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            HederTapBar(),
            Expanded(
              child: TabBarView(
                children: [
                  HomePage1(),
                  HomePage2(),
                  HomePage3(),
                  HomePage4(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
