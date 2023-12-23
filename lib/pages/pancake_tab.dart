// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:donutapp/util/tile.dart';
import 'package:flutter/material.dart';

class PancakeTab extends StatelessWidget {
  List pancakeList = [
    ['Straw Berry', '1', Colors.red, 'lib/assets/pc3.jpg'],
    ['Blue & Straw Berry', '1.5', Colors.purple, 'lib/assets/pc2.jpeg'],
    ['Honey Pancake', '1', Colors.orange, 'lib/assets/pancake.png'],
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GridView.builder(
        itemCount: pancakeList.length,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.4,
        ),
        itemBuilder: (context, index) {
          return Tile(
            color: pancakeList[index][2],
            price: pancakeList[index][1],
            flavor: pancakeList[index][0],
            image: pancakeList[index][3],
          );
        },
      ),
    );
  }
}
