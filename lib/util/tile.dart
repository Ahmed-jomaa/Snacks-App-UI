// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final String flavor;
  final String price;
  final dynamic color;
  final String image;

  final double br = 18;

  const Tile({
    Key? key,
    required this.flavor,
    required this.price,
    required this.color,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color[200],
        borderRadius: BorderRadius.circular(br),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_rounded,
                  color: Colors.red,
                ),
              ),
              Container(
                //margin: EdgeInsets.only(right: 5, top: 5),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color[300],
                  borderRadius: BorderRadius.circular(br),
                ),
                child: Text(
                  '\$ $price',
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontSize: br,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Image.asset(image),
          ),
          const SizedBox(height: 15),
          Text(
            flavor,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
