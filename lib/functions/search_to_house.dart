import 'package:akrilii/core/search_app.dart';
import 'package:flutter/material.dart';

void searchToHouse(BuildContext context) {
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