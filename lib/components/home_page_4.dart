import 'package:akrilii/components/view_card.dart';
import 'package:flutter/material.dart';

class HomePage4 extends StatelessWidget {
  const HomePage4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        itemCount: 12,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) => const ViewCard(
          titel: "فرص عمل",
        ),
      ),
    );
  }
}
