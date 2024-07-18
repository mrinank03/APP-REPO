// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const NavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            haptic: true,
            activeColor: Colors.white,
            duration: Duration(milliseconds: 700),
            tabBackgroundColor: Color.fromRGBO(180, 196, 0, 0.7),
            gap: 8,
            padding: EdgeInsets.all(16),
            onTabChange: (value) => onTabChange!(value),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.person_2_rounded,
                text: 'Schedule',
              ),
              GButton(
                icon: Icons.map_rounded,
                text: 'Campus Map',
              ),
              GButton(
                icon: Icons.link_rounded,
                text: 'Contact Us',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
