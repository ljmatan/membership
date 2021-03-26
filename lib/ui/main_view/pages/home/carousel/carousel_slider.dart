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

  int _maxExtent = 2;
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
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (_currentPage != _pageController.page!.round()) {
        _timer.cancel();
        _currentPage = _pageController.page!.round();
        _setTimer();
      }
    });
    _setTimer();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 341 / 226,
      child: PageView(
        controller: _pageController,
        children: [
          for (var i = 0; i < 3; i++)
            Padding(
              padding: const EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/home_photo.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
