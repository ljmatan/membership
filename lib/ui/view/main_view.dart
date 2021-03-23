import 'dart:async';

import 'package:flutter/material.dart';
import 'package:membership/ui/home/home_page.dart';
import 'package:membership/ui/view/bloc/view_controller.dart';
import 'package:membership/ui/view/nav_bar/custom_nav_bar.dart';

class MainView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainViewState();
  }
}

class _MainViewState extends State<MainView> {
  final _pageController = PageController();

  late StreamSubscription _viewSubscription;

  @override
  void initState() {
    super.initState();
    MainViewController.init();
    _viewSubscription = MainViewController.stream.listen((page) =>
        _pageController.animateToPage(page,
            duration: const Duration(milliseconds: 400), curve: Curves.ease));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD7D7D7),
      appBar: AppBar(
        elevation: 4,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
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
                      disabledBorder: OutlineInputBorder(
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
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                HomePage(),
              ],
            ),
          ),
          CustomNavBar(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _viewSubscription.cancel();
    MainViewController.dispose();
    super.dispose();
  }
}
