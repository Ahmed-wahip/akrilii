import 'package:akrilii/components/notifications_view.dart';
import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/navigator_app.dart';
import 'package:akrilii/data/notifications_data.dart';
import 'package:akrilii/screens/show_ads_screen.dart';

import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: notificationsItems.notificationsItems.length,
            itemBuilder: (context, index) => NotificationsView(
              onPressed: () {
                navigatorApp(
                  context,
                  ShowAdsScreen(
                    imageSrc:
                        notificationsItems.notificationsItems[index].image,
                    phoneNumper: 01006310430,
                    adres: "ajgjbuf ioegfbiv",
                    price: notificationsItems.notificationsItems[index].price,
                    sutTitel: notificationsItems
                        .notificationsItems[index].description,
                    titel: notificationsItems.notificationsItems[index].titel,
                    userName:
                        notificationsItems.notificationsItems[index].userName,
                    userEmail: "test1234@gmail.com",
                  ),
                );
              },
              imageSrc: notificationsItems.notificationsItems[index].image,
              userName: notificationsItems.notificationsItems[index].userName,
              titel: notificationsItems.notificationsItems[index].description,
              price: notificationsItems.notificationsItems[index].price,
              userEmail: "test1234@gmail.com",
            ),
          )),
    );
  }
}
/**
 *  body: ListView.builder(
        itemCount: notificationsItems.notificationsItems.length,
        itemBuilder: (context, index) => NotificationsView(
          onPressed: () {},
          image: notificationsItems.notificationsItems[index].image,
          userName: notificationsItems.notificationsItems[index].userName ,
          description: notificationsItems.notificationsItems[index].description,
          price: notificationsItems.notificationsItems[index].price,
        ),
      ),
 */