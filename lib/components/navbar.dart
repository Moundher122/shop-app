// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class navbar extends StatelessWidget {
  Function(int)? onTabChange;
   navbar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GNav(
      gap:5,
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBackgroundColor: const Color.fromARGB(203, 158, 158, 158),
        color: const Color.fromARGB(255, 147, 146, 146),
        activeColor: Colors.grey[900],
        onTabChange:onTabChange,
        backgroundColor:  Color.fromARGB(255, 221, 221, 221),
        tabs: [
          GButton(
            icon: Icons.home_filled,
            text: 'HOME',),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'SHOP',)
        ]),
    );
  }
}