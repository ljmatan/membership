import 'dart:math';

import 'package:flutter/material.dart';
import 'package:membership/ui/main_view/pages/cart/entry.dart';

class CartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CartPageState();
  }
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAEAEA),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 12,
        title: const Text(
          'Keranjang',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 16),
        children: [
          for (var i = 0; i < 6; i++)
            CartEntry(
              available: Random().nextBool(),
            ),
        ],
      ),
    );
  }
}
