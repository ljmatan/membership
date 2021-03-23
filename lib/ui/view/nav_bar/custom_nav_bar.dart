import 'package:flutter/material.dart';
import 'package:membership/ui/view/nav_bar/icon_entry.dart';

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: const Color(0xff999999),
            width: 0.2,
          ),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: kBottomNavigationBarHeight,
        child: Row(
          children: [
            NavBarIconEntry(
              icon: Icons.home,
              label: 'Home',
              index: 0,
            ),
            NavBarIconEntry(
              icon: Icons.shopping_bag,
              label: 'Kategori',
              index: 1,
            ),
            NavBarIconEntry(
              icon: Icons.shopping_cart,
              label: 'Keranjang',
              index: 2,
            ),
            NavBarIconEntry(
              icon: Icons.person,
              label: 'User',
              index: 3,
            ),
            NavBarIconEntry(
              icon: Icons.menu,
              label: 'Menu',
              index: 4,
            ),
          ],
        ),
      ),
    );
  }
}
