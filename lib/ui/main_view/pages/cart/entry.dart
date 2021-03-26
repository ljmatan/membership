import 'package:flutter/material.dart';

class CartEntry extends StatelessWidget {
  final bool available;

  CartEntry({required this.available});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: available
                    ? const Color(0xffD3FFBE)
                    : const Color(0xffFFD7D7),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      available ? 'Tersedia' : 'Habis',
                      style: const TextStyle(
                        color: Color(0xff6C6C6C),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
              child: Stack(
                children: [
                  Row(
                    children: [
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(0xffc4c4c4),
                        ),
                        child: SizedBox(width: 80, height: 80),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Stok Produk',
                              style: const TextStyle(
                                color: Color(0xffDD0000),
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'NAMA',
                              style: const TextStyle(
                                color: Color(0xff5F5F5F),
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              'PRODUK',
                              style: const TextStyle(
                                color: Color(0xff5F5F5F),
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              'Rp. 920.0202',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Row(
                                children: [
                                  for (var i = 0; i < 5; i++)
                                    Icon(
                                      Icons.star,
                                      size: 12,
                                      color: Colors.amber.shade300,
                                    ),
                                  Text(
                                    '(20)',
                                    style: const TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 0,
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      child: const Icon(
                        Icons.favorite,
                        color: Color(0xffD7443E),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12, right: 16),
              child: Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff00C714),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(18, 7, 18, 7),
                          child: Text(
                            'Tokopedia',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffFF8A00),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(18, 7, 18, 7),
                          child: Text(
                            'Shopee',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
