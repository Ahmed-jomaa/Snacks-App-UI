// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:donutapp/util/tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  List smoothieList = [
    //donut name, price, color, image
    ['StrawBerry', '2', Colors.red, 'lib/assets/s2.png'],
    ['BlueBerry', '2.5', Colors.purple, 'lib/assets/s3.jpg'],
    ['Apple', '1.5', Colors.green, 'lib/assets/s4.png'],
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GridView.builder(
        itemCount: smoothieList.length,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.4,
        ),
        itemBuilder: (context, index) {
          return Tile(
            color: smoothieList[index][2],
            price: smoothieList[index][1],
            flavor: smoothieList[index][0],
            image: smoothieList[index][3],
          );
        },
      ),
    );
  }
}
