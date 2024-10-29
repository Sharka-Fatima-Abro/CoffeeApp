import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class bottomnav extends StatelessWidget {
  void Function(int)? onTabChange;
  bottomnav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          color: Colors.grey[400],
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.grey[700],
          tabBackgroundColor: Colors.grey.shade500,
          tabBorderRadius: 40,
          tabActiveBorder: Border.all(color: Colors.white70),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'shop',
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'cart',
            ),
          ]),
    );
  }
}
