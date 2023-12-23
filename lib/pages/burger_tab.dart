// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:donutapp/util/tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  List burgerList = [
    //donut name, price, color, image
    ['Cheese burger', '4.5', Colors.red, 'lib/assets/b1.jpg'],
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GridView.builder(
        itemCount: burgerList.length,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.4,
        ),
        itemBuilder: (context, index) {
          return Tile(
            color: burgerList[index][2],
            price: burgerList[index][1],
            flavor: burgerList[index][0],
            image: burgerList[index][3],
          );
        },
      ),
    );
  }
}
