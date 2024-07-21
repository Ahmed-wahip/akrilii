import 'package:akrilii/components/servise_card_view.dart';
import 'package:akrilii/core/navigator_app.dart';
import 'package:akrilii/data/jops_dart.dart';
import 'package:akrilii/screens/show_ads_screen.dart';
import 'package:flutter/material.dart';

class JobsView extends StatelessWidget {
  const JobsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        itemCount: jopsDart.jopsList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
                    childAspectRatio: 0.6,

        ),
        itemBuilder: (context, index) => ServiseCardview(
          titel: jopsDart.jopsList[index].titel,
          decrichenHight: jopsDart.jopsList[index].decrichenHight,
          imageSrc: jopsDart.jopsList[index].image,
          price: jopsDart.jopsList[index].price,
          onPressed: () => navigatorApp(
            context,
            ShowAdsScreen(
              imageSrc: jopsDart.jopsList[index].image,
              titel: jopsDart.jopsList[index].titel,
              sutTitel: jopsDart.jopsList[index].description,
              adres: "",
              phoneNumper: 01006310430,
              userName: "ahmed wahip",
              userEmail: "test1234@Gmail.com",
              price: jopsDart.jopsList[index].price,
            ),
          ),
        ),
      ),
    );
  }
}
