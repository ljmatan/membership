import 'package:flutter/material.dart';

class HistoryEntryDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Pesanan',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Status',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                Text(
                  'Pesanan Telah diterima',
                  style: const TextStyle(
                    color: Color(0xff00C714),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 0, thickness: 1),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tanggal',
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color(0xffA6A6A6),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text('No invoice'),
                    ),
                    Text('Kategori Produk'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Tanggal'),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text('No invoice'),
                    ),
                    Text('Kategori Produk'),
                  ],
                ),
              ],
            ),
          ),
          const Divider(height: 0, thickness: 1),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Detail Pembelian',
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Text('Produk'),
                          const SizedBox(height: 7),
                          Text('Tipe Produk'),
                          const SizedBox(height: 7),
                          Text('Nama'),
                          const SizedBox(height: 7),
                          Text('Nomor Kartu'),
                          const SizedBox(height: 7),
                          Text('Biaya Admin'),
                          const SizedBox(height: 7),
                          Text('Total Bayar'),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Produk'),
                          const SizedBox(height: 7),
                          Text('Tipe Produk'),
                          const SizedBox(height: 7),
                          Text('Nama'),
                          const SizedBox(height: 7),
                          Text('Nomor Kartu'),
                          const SizedBox(height: 7),
                          Text('Biaya Admin'),
                          const SizedBox(height: 7),
                          Text(
                            'Rp. 920.0202',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFF4D00),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Rekomendasi Untukmu'),
                            Text(
                              'lihat semua promo >>',
                              style: const TextStyle(
                                color: Color(0xff505050),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: SizedBox(
                          height: 180,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.only(left: 16, right: 4),
                            children: [
                              for (var i = 0; i < 8; i++)
                                Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: GestureDetector(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: const Color(0xff999999),
                                      ),
                                      child: SizedBox(
                                        height: 180,
                                        width: 140,
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
