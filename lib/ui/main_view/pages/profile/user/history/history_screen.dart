import 'package:flutter/material.dart';
import 'package:membership/ui/main_view/pages/profile/user/history/entry.dart';

class HistoryScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HistoryScreenState();
  }
}

class _HistoryScreenState extends State<HistoryScreen> {
  static final List<String> _filterLabels = const [
    'Semua',
    'Menunggu Konfirmasi',
    'Pesanan Diproses',
    'Pesanan Dikirim',
    'Pesanan Tiba',
    'Pesanan Selesai',
    'Pesanan Dibatalkan',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Daftar Transaksi',
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 12, right: 4),
              children: [
                for (var label in _filterLabels)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 8, 12),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: SizedBox(
                        height: 36,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Text(label),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          HistoryEntry(paid: false),
          HistoryEntry(paid: true),
        ],
      ),
    );
  }
}
