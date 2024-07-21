import 'package:akrilii/components/servise_card_view.dart';
import 'package:akrilii/core/navigator_app.dart';
import 'package:akrilii/data/wedding_car_data.dart';
import 'package:akrilii/screens/show_ads_screen.dart';
import 'package:flutter/material.dart';

class WeddingCarViow extends StatelessWidget {
  const WeddingCarViow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        itemCount: weddingCarData.weddingCarlist.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
        ),
        itemBuilder: (context, index) => ServiseCardview(
          onPressed: () => navigatorApp(
            context,
            ShowAdsScreen(
              imageSrc: weddingCarData.weddingCarlist[index].image,
              titel: weddingCarData.weddingCarlist[index].titel,
              sutTitel: weddingCarData.weddingCarlist[index].description,
              adres: "",
              phoneNumper: 01006310430,
              userName: "ahmed wahip",
              userEmail: "test1234@Gmail.com",
              price: weddingCarData.weddingCarlist[index].price,
            ),
          ),
          titel: weddingCarData.weddingCarlist[index].titel,
          imageSrc: weddingCarData.weddingCarlist[index].image,
          decrichenHight: weddingCarData.weddingCarlist[index].decrichenHight,
          price: weddingCarData.weddingCarlist[index].price,
        ),
      ),
    );
  }
}
