import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/core/localizations_app.dart';
import 'package:akrilii/core/size_app.dart';
import 'package:akrilii/enums/text_type.dart';
import 'package:akrilii/theme/theme_icon.dart';
import 'package:akrilii/theme/theme_normal_text.dart';
import 'package:akrilii/theme/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowAdsScreen extends StatelessWidget {
  final String imageSrc;
  final String titel;
  final String sutTitel;
  final String adres;
  final String userName;
  final String userEmail;
  final int phoneNumper;
  final double price;

  const ShowAdsScreen(
      {super.key,
      required this.imageSrc,
      required this.titel,
      required this.sutTitel,
      required this.userName,
      required this.userEmail,
      required this.phoneNumper,
      required this.adres,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            HeroImageAds(
              imageSrc: imageSrc,
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                width: SizeApp.screenWidth! * 1,
                height: SizeApp.screenHeight! * 0.80,
                child: Stack(
                  children: [
                    DescriptionBox(
                      titel: titel,
                      subTitel: sutTitel,
                      adres: adres,
                      phoneNumter: phoneNumper,
                      userEmail: userEmail,
                      userName: userName,
                      price: price,
                    ),
                    SmallImageAds(
                      imageSrc: imageSrc,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10.h,
              left: 10.h,
              child: ThemeIcon(
                onPressed: () => Navigator.pop(context),
                svgIcon: iconApp.arrowRight.tr(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionBox extends StatelessWidget {
  final String titel;
  final String subTitel;
  final String userName;
  final String userEmail;
  final String adres;
  final int phoneNumter;
  final double price;
  const DescriptionBox({
    super.key,
    required this.titel,
    required this.subTitel,
    required this.userName,
    required this.userEmail,
    required this.adres,
    required this.phoneNumter,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      child: Container(
        width: SizeApp.screenWidth! * 1,
        height: SizeApp.screenHeight! * 0.70,
        decoration: BoxDecoration(
          color: ColorApp.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.r),
            topRight: Radius.circular(12.r),
          ),
          boxShadow: [
            BoxShadow(
              color: ColorApp.shadowColor,
              offset: const Offset(0, 3),
              blurRadius: 8,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 50.h),
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
              SizedBox(height: 20.h),
              ThemeNormalText(
                text: titel,
                color: ColorApp.titelColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10.h),
              ThemeNormalText(
                text: subTitel,
                color: ColorApp.hintColor,
                fontSize: 15,
              ),
              SizedBox(height: 5.h),
              ThemeNormalText(
                text: "Adres : $adres",
                color: ColorApp.hintColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10.h),
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
              SizedBox(height: 10.h),
              Row(
                children: [
                  ThemeText(
                    text: "phone_numper_for_srevice",
                    textType: TextType.description,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: ThemeNormalText(
                      text: "$phoneNumter",
                      color: ColorApp.descriptionColor,
                      fontSize: 15,
                    ),
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

class SmallImageAds extends StatelessWidget {
  final String imageSrc;
  const SmallImageAds({
    super.key,
    required this.imageSrc,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.0,
      right: 20.0.w,
      child: Container(
        width: 150.w,
        height: 150.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorApp.primaryColor,
          border: Border.all(
            width: 4.w,
            color: ColorApp.backgroundColor,
          ),
          image: DecorationImage(
            image: NetworkImage(imageSrc),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class HeroImageAds extends StatelessWidget {
  final String imageSrc;
  const HeroImageAds({
    super.key,
    required this.imageSrc,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.0,
      child: Container(
        width: SizeApp.screenWidth! * 1,
        height: SizeApp.screenHeight! * 0.34,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: NetworkImage(imageSrc),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
