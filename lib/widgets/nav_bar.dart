// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      selectedItemColor: Colors.grey[600],
      unselectedItemColor: Colors.grey[300],
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 26,
      items: [
        const BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        const BottomNavigationBarItem(
          label: 'Wallet',
          icon: const Icon(Icons.wallet),
        ),
        const BottomNavigationBarItem(
          label: 'Favorite',
          icon: const Icon(Icons.favorite_border),
        ),
        const BottomNavigationBarItem(
          backgroundColor: Colors.grey,
          label: 'Settings',
          icon: Icon(Icons.settings),
        ),
      ],
    );
  }
}
