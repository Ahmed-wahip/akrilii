import 'package:akrilii/core/search_app.dart';

import 'package:flutter/material.dart';

void searchToCar(BuildContext context) {
  // for (int index = 0; index <= carData.carData.length; index++) {
  //   print(index);
  showSearch(
    context: context,
    delegate: SearchApp(
      listSearchTitel: [
        "ahmed",
        "mazen",
        "rawan",
        "noor",
        "wahip",
      ],
      listSearchDescription: [
        "1",
        "2",
        "3",
        "4",
        "5",
      ],
    ),
  );
}
// }
