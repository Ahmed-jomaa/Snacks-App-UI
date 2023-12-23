// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:donutapp/pages/burger_tab.dart';
import 'package:donutapp/pages/donut_tab.dart';
import 'package:donutapp/pages/pancake_tab.dart';
import 'package:donutapp/pages/pizza_tab.dart';
import 'package:donutapp/pages/smoothie_tab.dart';
import 'package:donutapp/util/my_tab.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //my_tabs
  List<Widget> myTabs = [
    MyTap(
      iconPath: 'lib/assets/donut.png',
    ),
    MyTap(
      iconPath: 'lib/assets/pizza.jpg',
    ),
    MyTap(
      iconPath: 'lib/assets/smoothie.png',
    ),
    MyTap(
      iconPath: 'lib/assets/burger.png',
    ),
    MyTap(
      iconPath: 'lib/assets/pancake.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'I want to eat',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0.0,
          leading: Container(
            margin: const EdgeInsets.only(left: 24),
            child: IconButton(
              icon: const Icon(
                Icons.menu_rounded,
                color: Colors.black,
                size: 24,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 24),
              child: IconButton(
                icon: const Icon(
                  Icons.person_rounded,
                  color: Colors.black,
                  size: 24,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            TabBar(
              tabs: myTabs,
              indicatorColor: Colors.black,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  PizzaTab(),
                  SmoothieTab(),
                  BurgerTab(),
                  PancakeTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
