import 'package:akrilii/components/rental_car_view.dart';
import 'package:akrilii/components/wedding_car_viow.dart';
import 'package:akrilii/components/houses_rent_view.dart';
import 'package:akrilii/components/jobs_view.dart';
import 'package:akrilii/widget/heder_tap_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            HederTapBar(),
            Expanded(
              child: TabBarView(
                children: [
                  //* pade Rental Car
                  // model of AppServesInfo
                  // data of RentalCarData
                  RentalCarView(),

                  //* page WeddingCar
                  // model of AppServesInfo
                  //  data of weddingCarData
                  WeddingCarViow(),

                  //* page Houses Rent
                  // model of AppServesInfo
                  // data of HousesRentDart
                  HousesRentView(),

                  //* page japs
                  // model of AppServesInfo
                  // data of jopsData
                  JobsView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
