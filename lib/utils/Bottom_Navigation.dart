import 'package:flutter/material.dart';
import 'package:meal_app/utils/constant.dart';

import '../screens/Cart.dart';
import '../screens/home_page.dart';

class BottomN extends StatefulWidget {
  const BottomN({Key? key}) : super(key: key);

  @override
  _BottomNState createState() => _BottomNState();
}

class _BottomNState extends State<BottomN> {
  int currentIndex=0;
  final screens = [
    HomePage(),
    Cart(),
  ];

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body:
        IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),

        backgroundColor: pink,
        selectedItemColor: yellow,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),

        ],
      ),


      );
}


