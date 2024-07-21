import 'package:akrilii/components/servise_card_view.dart';
import 'package:akrilii/core/navigator_app.dart';
import 'package:akrilii/data/rental_car_data.dart';
import 'package:akrilii/screens/show_ads_screen.dart';
import 'package:flutter/material.dart';

class RentalCarView extends StatelessWidget {
  const RentalCarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        itemCount: rentalCarData.rentalCarOfList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
        ),
        itemBuilder: (context, index) => ServiseCardview(
          titel: rentalCarData.rentalCarOfList[index].titel,
          decrichenHight: rentalCarData.rentalCarOfList[index].decrichenHight,
          imageSrc: rentalCarData.rentalCarOfList[index].image,
          price: rentalCarData.rentalCarOfList[index].price,
          onPressed: () => navigatorApp(
            context,
            ShowAdsScreen(
              imageSrc: rentalCarData.rentalCarOfList[index].image,
              titel: rentalCarData.rentalCarOfList[index].titel,
              sutTitel: rentalCarData.rentalCarOfList[index].description,
              adres: "",
              phoneNumper: 01006310430,
              userName: "ahmed wahip",
              userEmail: "test1234@Gmail.com",
              price: rentalCarData.rentalCarOfList[index].price,
            ),
          ),
        ),
      ),
    );
  }
}
