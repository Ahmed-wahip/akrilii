import 'package:akrilii/components/servise_card_view.dart';
import 'package:akrilii/core/navigator_app.dart';
import 'package:akrilii/data/houses_rent_dart.dart';
import 'package:akrilii/screens/show_ads_screen.dart';
import 'package:flutter/material.dart';

class HousesRentView extends StatelessWidget {
  const HousesRentView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        itemCount: housesRentDart.housesRentList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
        ),
        itemBuilder: (context, index) => ServiseCardview(
          titel: housesRentDart.housesRentList[index].titel,
          decrichenHight: housesRentDart.housesRentList[index].decrichenHight,
          imageSrc: housesRentDart.housesRentList[index].image,
          price: housesRentDart.housesRentList[index].price,
          onPressed: () => navigatorApp(
            context,
            ShowAdsScreen(
              imageSrc: housesRentDart.housesRentList[index].image,
              titel: housesRentDart.housesRentList[index].titel,
              sutTitel: housesRentDart.housesRentList[index].description,
              adres: "",
              phoneNumper: 01006310430,
              userName: "ahmed wahip",
              userEmail: "test1234@Gmail.com",
              price: housesRentDart.housesRentList[index].price,
            ),
          ),
        ),
      ),
    );
  }
}
