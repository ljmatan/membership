import 'package:flutter/material.dart';

class HorizontalListDisplay extends StatelessWidget {
  final String label;

  HorizontalListDisplay({required this.label});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
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
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0xff999999),
                        ),
                        child: SizedBox(
                          height: 180,
                          width: 140,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
