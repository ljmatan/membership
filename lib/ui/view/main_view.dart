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
    return Column(
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
    );
  }

  @override
  void dispose() {
    _viewSubscription.cancel();
    MainViewController.dispose();
    super.dispose();
  }
}
