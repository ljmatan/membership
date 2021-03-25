import 'dart:async';

import 'package:flutter/material.dart';
import 'package:membership/ui/main_view/pages/profile/user/info_carousel/left_slide.dart';
import 'package:membership/ui/main_view/pages/profile/user/info_carousel/right_slide.dart';

class _TabSelectionButton extends StatelessWidget {
  final String label;
  final int index;
  final StreamController streamController;

  _TabSelectionButton({
    required this.label,
    required this.index,
    required this.streamController,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StreamBuilder(
        stream: streamController.stream,
        initialData: 0,
        builder: (context, selected) => GestureDetector(
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: selected.data == index ? 2 : 0.5,
                  color: selected.data == index
                      ? const Color(0xffff5050)
                      : Colors.grey,
                ),
              ),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 36,
              child: Center(
                child: Text(label),
              ),
            ),
          ),
          onTap: () => streamController.add(index),
        ),
      ),
    );
  }
}

class InfoCarousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InfoCarouselState();
  }
}

class _InfoCarouselState extends State<InfoCarousel> {
  final _pageController = PageController();

  final _selectedController = StreamController.broadcast();

  late StreamSubscription _selectedSubscribtion;

  @override
  void initState() {
    super.initState();
    _selectedSubscribtion = _selectedController.stream.listen((page) =>
        _pageController.animateToPage(page,
            duration: const Duration(milliseconds: 300), curve: Curves.ease));
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.white),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 260,
        child: Column(
          children: [
            Row(
              children: [
                _TabSelectionButton(
                  label: 'DATA DIRI',
                  index: 0,
                  streamController: _selectedController,
                ),
                _TabSelectionButton(
                  label: 'ALAMAT PENGIRIMAN',
                  index: 1,
                  streamController: _selectedController,
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  UserInfoLeftSlide(),
                  UserInfoRightSlide(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _selectedController.close();
    _selectedSubscribtion.cancel();
    super.dispose();
  }
}
