// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:donutapp/util/tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  List donutsList = [
    //donut name, price, color, image
    ['Choclate Cream', '2', Colors.brown, 'lib/assets/chocolate_donut.png'],
    ['Strawberry Cream', '2.5', Colors.orange, 'lib/assets/donut.png'],
    ['Grape Cream', '1.5', Colors.purple, 'lib/assets/grape_donut.png'],
    ['IceCream Cream', '2', Colors.pink, 'lib/assets/icecream_donut.png'],
  ];

  DonutTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GridView.builder(
        itemCount: donutsList.length,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.4,
        ),
        itemBuilder: (context, index) {
          return Tile(
            color: donutsList[index][2],
            price: donutsList[index][1],
            flavor: donutsList[index][0],
            image: donutsList[index][3],
          );
        },
      ),
    );
  }
}
