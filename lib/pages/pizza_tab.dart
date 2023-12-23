// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:donutapp/util/tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  List pizzaList = [
    ['Meat Pizza', '2', Colors.brown, 'lib/assets/p1.png'],
    ['Mexican Pizza', '2.5', Colors.orange, 'lib/assets/p4.jpg'],
    ['Paperoni Pizza', '1.5', Colors.purple, 'lib/assets/p3.jpg'],
    ['4 Seasons Pizza', '2', Colors.pink, 'lib/assets/p2.jpg'],
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GridView.builder(
        itemCount: pizzaList.length,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.4,
        ),
        itemBuilder: (context, index) {
          return Tile(
            color: pizzaList[index][2],
            price: pizzaList[index][1],
            flavor: pizzaList[index][0],
            image: pizzaList[index][3],
          );
        },
      ),
    );
  }
}
