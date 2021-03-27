import 'package:flutter/material.dart';
import 'entry_details.dart';

class HistoryEntry extends StatelessWidget {
  final bool paid;

  HistoryEntry({required this.paid});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 4),
                blurRadius: 6,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color:
                      paid ? const Color(0xffD3FFBE) : const Color(0xffFFD7D7),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        paid
                            ? '(Status Pesanan) Telah Diterima'
                            : '(Status Pesanan) Belum Dibayar',
                        style: const TextStyle(
                          color: Color(0xff6C6C6C),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tanggal',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xffA6A6A6),
                          ),
                        ),
                        Text('No invoice'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Bank Transfer',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xffA6A6A6),
                          ),
                        ),
                        Text('BCA 33736366633'),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(height: 0, thickness: 1),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 14),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0xffC4C4C4),
                        ),
                        child: SizedBox(width: 80, height: 80),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'NAMA PRODUK',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text('Detail Produk'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(height: 0, thickness: 1),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.only(left: 94),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 6),
                            child: Text(
                              'Total Pembayaran',
                              style: TextStyle(
                                color: Color(0xff787878),
                              ),
                            ),
                          ),
                          Text(
                            'Rp. 920.0202',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFF4D00),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: paid
                                ? const Color(0xffFFB802)
                                : const Color(0xff00C714),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(18, 7, 18, 7),
                            child: Text(
                              paid ? 'Berikan Review' : 'Bayar Sekarang',
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
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (BuildContext context) => HistoryEntryDetails(),
          ),
        ),
      ),
    );
  }
}
