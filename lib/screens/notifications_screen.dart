import 'package:akrilii/components/notifications_view.dart';
import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/model/notifications_items.dart';

import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: ListView.builder(
        itemCount: notificationsItemsContrller.notificationsitems.length,
        itemBuilder: (context, index) => NotificationsView(
          onPressed: () {},
          image: notificationsItemsContrller.notificationsitems[index].image,
          userName:
              notificationsItemsContrller.notificationsitems[index].userName,
          description:
              notificationsItemsContrller.notificationsitems[index].description,
          price: notificationsItemsContrller.notificationsitems[index].price,
        ),
      ),
    );
  }
}
