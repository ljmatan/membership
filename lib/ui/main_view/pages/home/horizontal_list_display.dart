import 'package:flutter/material.dart';
import 'package:membership/ui/screens/product_detail/product_detail_screen.dart';

class HorizontalListDisplay extends StatelessWidget {
  final String label;
  final Widget route;

  HorizontalListDisplay({required this.label, required this.route});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(label),
                    Text(
                      'lihat semua promo >>',
                      style: const TextStyle(
                        color: Color(0xff505050),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 12, right: 4),
                  children: [
                    for (var i = 0; i < 8; i++)
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: GestureDetector(
                          child: const DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color(0xff999999),
                            ),
                            child: SizedBox(height: 180, width: 140),
                          ),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  ProductDetailScreen(),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (BuildContext context) => route,
            ),
          ),
        ),
      ),
    );
  }
}
