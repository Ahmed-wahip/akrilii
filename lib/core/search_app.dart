// ignore_for_file: file_names

import 'package:akrilii/core/icon_app.dart';
import 'package:akrilii/core/localizations_app.dart';
import 'package:akrilii/core/navigator_app.dart';
import 'package:akrilii/model/search_info.dart';
import 'package:akrilii/src/akrilii_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchApp extends SearchDelegate {
  final List listSearchTitel;
  final List listSearchDescription;

  SearchApp({
    super.searchFieldLabel,
    super.searchFieldStyle,
    super.searchFieldDecorationTheme,
    super.keyboardType,
    super.textInputAction,
    required this.listSearchTitel,
    required this.listSearchDescription,
  });
  List? filterSearch;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        onPressed: () {
          navigatorApp(context, const AkriliiApp());
        },
        icon: SvgPicture.asset(iconApp.homeIcon),
      ),
      IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: SvgPicture.asset(iconApp.arrowLeft.tr(context)),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        query = "";
      },
      icon: SvgPicture.asset(iconApp.closeIcon),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    filterSearch =
        listSearchTitel.where((element) => element.contains(query)).toList();
    return ListView.builder(
      itemCount: filterSearch!.length,
      itemBuilder: (context, index) => SearchInfo(
        text: listSearchTitel[index].toString(),
        description: listSearchDescription[index].toString(),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
        itemCount: listSearchTitel.length,
        itemBuilder: (context, index) => SearchInfo(
          text: listSearchTitel[index].toString(),
          description: listSearchDescription[index].toString(),
        ),
      );
    } else {
      filterSearch =
          listSearchTitel.where((element) => element.contains(query)).toList();
      return ListView.builder(
        itemCount: filterSearch!.length,
        itemBuilder: (context, index) => SearchInfo(
          text: filterSearch![index],
          description: listSearchDescription[index].toString(),
        ),
      );
    }
  }
}
