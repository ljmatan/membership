import 'dart:async';

import 'package:flutter/material.dart';
import 'package:membership/ui/main_view/pages/home/carousel/carousel_slider.dart';
import 'package:membership/ui/main_view/pages/home/horizontal_list_display.dart';
import 'package:membership/ui/main_view/pages/home/menu_button.dart';
import 'package:membership/ui/main_view/pages/home/product_details.dart';
import 'package:membership/ui/screens/comparison/product_comparison.dart';
import 'package:membership/ui/screens/history/history_screen.dart';
import 'package:membership/ui/screens/location/store_location.dart';
import 'package:membership/ui/screens/promo_details/promos_screen.dart';
import 'package:membership/ui/screens/tips_tricks_screen.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();

  final _productDetailsVisibility = StreamController.broadcast();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD7D7D7),
      appBar: AppBar(
        title: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: StreamBuilder(
            stream: _productDetailsVisibility.stream,
            initialData: false,
            builder: (context, AsyncSnapshot visible) => Padding(
              padding: EdgeInsets.only(left: visible.data ? 0 : 12),
              child: Row(
                children: [
                  if (visible.data)
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () => _productDetailsVisibility.add(false),
                    ),
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffE4E4E4),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Cari produk harga terbaik',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        contentPadding: const EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.center_focus_strong,
                        color: const Color(0xff2B6182),
                      ),
                    ),
                    onTap: () => null,
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    child: Icon(
                      Icons.forum,
                      color: const Color(0xffED4242),
                    ),
                    onTap: () => null,
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.notifications,
                        color: const Color(0xff999999),
                      ),
                    ),
                    onTap: () => null,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              GestureDetector(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      CarouselSlider(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12, bottom: 12),
                          child: Text(
                            'lihat semua promo >>',
                            style: const TextStyle(
                              color: Color(0xff505050),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () => _productDetailsVisibility.add(true),
              ),
              const SizedBox(height: 10),
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomePageMenuButton(
                        label: 'Kunjungi Toko',
                        route: StoreLocationScreen(),
                      ),
                      HomePageMenuButton(
                        label: 'Daftar Transaksi',
                        route: HistoryScreen(),
                      ),
                      HomePageMenuButton(
                        label: 'Vouchermu',
                        route: ProductComparisonScreen(),
                      ),
                      HomePageMenuButton(
                        label: 'Tips Candi',
                        route: TipsAndTricksScreen(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              HorizontalListDisplay(
                label: 'Promo Minggu Ini',
                route: const SizedBox(),
              ),
              const SizedBox(height: 10),
              HorizontalListDisplay(
                label: 'Televisi Penawaran Terbaik',
                route: const SizedBox(),
              ),
              const SizedBox(height: 10),
              HorizontalListDisplay(
                label: 'Televisi Penawaran Terbaik',
                route: const SizedBox(),
              ),
              const SizedBox(height: 10),
              HorizontalListDisplay(
                label: 'Mesin Cuci Super Deal',
                route: const SizedBox(),
              ),
              const SizedBox(height: 10),
              HorizontalListDisplay(
                label: 'Lemari Es Termurah',
                route: const SizedBox(),
              ),
              const SizedBox(height: 10),
              HorizontalListDisplay(
                label: 'Air Conditioner',
                route: const SizedBox(),
              ),
              const SizedBox(height: 10),
              HorizontalListDisplay(
                label: 'Aksesoris Pilihan',
                route: PromosScreen(),
              ),
              const SizedBox(height: 10),
              HorizontalListDisplay(
                label: 'Audio',
                route: const SizedBox(),
              ),
              const SizedBox(height: 10),
              HorizontalListDisplay(
                label: 'Kitchen',
                route: PromosScreen(),
              ),
              const SizedBox(height: 10),
              HorizontalListDisplay(
                label: 'Home Appliance',
                route: PromosScreen(),
              ),
              const SizedBox(height: 10),
            ],
          ),
          StreamBuilder(
            stream: _productDetailsVisibility.stream,
            initialData: false,
            builder: (context, AsyncSnapshot visible) =>
                visible.data ? ProductDetails() : const SizedBox(),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _productDetailsVisibility.close();
    super.dispose();
  }
}
