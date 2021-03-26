import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductDetailsState();
  }
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xffD7D7D7),
      ),
      child: ListView(
        children: [
          Image.asset(
            'assets/images/product_details.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rp. 3.980.000',
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Color(0xffFF0000),
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Rp. 2.749.000',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                      Text(
                        'SAMSUNG - LED TV 32 INCH UA43N5001AK',
                        style: const TextStyle(fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4, bottom: 8),
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
                      Row(
                        children: [
                          Text('Terjual 12  '),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                color: const Color(0xffffa4a4),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(6, 2, 6, 2),
                              child: Text(
                                'Stok < 3',
                                style: const TextStyle(
                                  color: Color(0xffFFA4A4),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
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
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kurir',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'Ongkos kirim mulai dari Rp 15.000 ke ',
                                ),
                                TextSpan(
                                  text: 'Kab. Surakarta',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          child: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/product_details_icon.png',
                        fit: BoxFit.fitHeight,
                        height: 26,
                      ),
                      Text(
                        '  Tersedia COD (Bayar di Tempat)',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text('Bayar melalui kurir saat pesanan tiba'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            'Informasi Produk',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text('Berat'),
                        const SizedBox(height: 5),
                        Text('Kondisi'),
                        const SizedBox(height: 5),
                        Text('Kategori'),
                        const SizedBox(height: 5),
                        Text('Dimensi'),
                      ],
                    ),
                    DefaultTextStyle(
                      style: const TextStyle(
                        color: Color(0xffA6A6A6),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Berat'),
                          const SizedBox(height: 5),
                          Text('Kondisi'),
                          const SizedBox(height: 5),
                          Text('Kategori'),
                          const SizedBox(height: 5),
                          Text('Dimensi'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Diskripsi Produk',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the '
                    'industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type '
                    'and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '
                    'leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with '
                    'the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing '
                    'software like Aldus PageMaker including versions of Lorem Ipsum.',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
