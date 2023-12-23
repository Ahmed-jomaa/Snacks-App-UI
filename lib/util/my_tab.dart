import 'package:flutter/material.dart';

class MyTap extends StatelessWidget {
  final String iconPath;
  const MyTap({super.key, required this.iconPath});
  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        decoration: const BoxDecoration(),
        child: Image.asset(
          iconPath,
          //color: Colors.grey[600],
        ),
      ),
    );
  }
}
