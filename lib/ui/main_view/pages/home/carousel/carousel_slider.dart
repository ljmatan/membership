import 'dart:async';

import 'package:flutter/material.dart';

class CarouselSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselSliderState();
  }
}

class _CarouselSliderState extends State<CarouselSlider> {
  final PageController _pageController = PageController();

  void _addPageControllerListener() => _pageController.addListener(() {
        if (_currentPage != _pageController.page!.round()) {
          _timer.cancel();
          _currentPage = _pageController.page!.round();
          _setTimer();
        }
      });

  late int _maxExtent;
  int _currentPage = 0;

  late Timer _timer;
  void _setTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 3),
      (_) {
        if (_currentPage < _maxExtent)
          _pageController.nextPage(
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        else
          _pageController.animateToPage(
            0,
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
          );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
