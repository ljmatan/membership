import 'package:flutter/material.dart';
import 'package:membership/ui/main_view/pages/menu/screens/comparison/product_comparison.dart';
import 'package:membership/ui/main_view/pages/menu/screens/location/store_location.dart';
import 'package:membership/ui/screens/promo_details/promos_screen.dart';
import 'package:membership/ui/screens/tips_tricks_screen.dart';

class MenuPage extends StatelessWidget {
  static final List<String> _labels = const [
    'Membership',
    'Semua Transaksi',
    'Live Chat',
    'Lokasi Store',
    'QR Scanner',
    'Compare Produk',
  ];

  static final List<Widget> _routes = [
    FirstPromoScreen(),
    TipsAndTricksScreen(),
    const SizedBox(),
    StoreLocationScreen(),
    const SizedBox(),
    ProductComparisonScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 12),
        children: [
          Text(
            'Menu',
            style: const TextStyle(fontSize: 22),
          ),
          const Divider(
            color: Color(0xffff5050),
            thickness: 1,
          ),
          GridView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.9,
              crossAxisCount: 3,
            ),
            children: [
              for (var i = 0; i < 6; i++)
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 6),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffff5050),
                          ),
                          child: SizedBox(width: 64, height: 64),
                        ),
                      ),
                      Text(_labels[i]),
                    ],
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => _routes[i],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
