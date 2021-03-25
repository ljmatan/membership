import 'dart:async';

import 'package:flutter/material.dart';
import 'package:membership/ui/main_view/pages/categories/categories_page.dart';
import 'package:membership/ui/main_view/pages/home/home_page.dart';
import 'package:membership/ui/main_view/bloc/view_controller.dart';
import 'package:membership/ui/main_view/nav_bar/custom_nav_bar.dart';
import 'package:membership/ui/main_view/pages/menu/menu_page.dart';
import 'package:membership/ui/main_view/pages/profile/auth/auth_page.dart';
import 'package:membership/ui/main_view/pages/profile/user/user_page.dart';

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
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                HomePage(),
                CategoriesPage(),
                const SizedBox(),
                UserPage(), // AuthPage(),
                MenuPage(),
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
