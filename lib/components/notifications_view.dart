import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/size_app.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:akrilii/theme/theme_normal_text.dart';
import 'package:akrilii/theme/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsView extends StatelessWidget {
  final VoidCallback onPressed;
  final String userName;
  final String userEmail;
  final String titel;
  final String imageSrc;
  final double price;
  const NotificationsView({
    super.key,
    required this.userName,
    required this.titel,
    required this.imageSrc,
    required this.price,
    required this.onPressed,
    required this.userEmail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      // padding: const EdgeInsets.all(10),
      width: SizeApp.screenWidth!,
      height: SizeApp.screenHeight! / 2.5,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/user-image.jpg",
                  ),
                ),
                title: ThemeNormalText(
                  color: ColorApp.titelColor,
                  fontSize: 16,
                  text: userName,
                  fontWeight: FontWeight.bold,
                ),
                subtitle: ThemeNormalText(
                  color: ColorApp.auxiliaryColor,
                  fontSize: 15,
                  text: userEmail,
                ),
              ),
              Container(
                width: SizeApp.screenWidth!,
                height: SizeApp.screenHeight! / 5.5.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(imageSrc),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: [
                  ThemeText(
                    text: "price_serves",
                    textType: TextType.text,
                  ),
                  ThemeNormalText(
                    text: " :$price",
                    color: ColorApp.hintColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
