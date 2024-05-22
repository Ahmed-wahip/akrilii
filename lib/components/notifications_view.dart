import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/size_app.dart';
import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  final VoidCallback onPressed;
  final String userName;
  final String description;
  final String image;
  final int price;
  const NotificationsView({
    super.key,
    required this.userName,
    required this.description,
    required this.image,
    required this.price,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      // padding: const EdgeInsets.all(10),
      width: SizeApp.screenWidth!,
      height: SizeApp.screenHeight! / 6,
      decoration: BoxDecoration(
        color: ColorApp.backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: ColorApp.shadowColor,
            offset: const Offset(0, 3),
            blurRadius: 8,
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: onPressed,
        padding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(userName),
                  Text(description),
                  Text("price of $price\$ on dey"),
                ],
              ),
              const Spacer(),
              Container(
                width: SizeApp.screenHeight! / 6,
                height: SizeApp.screenHeight! / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
