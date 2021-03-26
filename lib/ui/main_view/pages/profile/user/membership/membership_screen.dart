import 'dart:async';

import 'package:flutter/material.dart';

class MembershipScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MembershipScreenState();
  }
}

class _MembershipScreenState extends State<MembershipScreen> {
  final _pageController = PageController();

  int _currentPage = 0;

  final _pageIndexController = StreamController.broadcast();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (_pageController.page?.round() != _currentPage) {
        _currentPage = _pageController.page!.round();
        _pageIndexController.add(_currentPage);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Status Membership',
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff767676),
                        Color(0xffCDCDCD),
                      ],
                    ),
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 240,
                  ),
                ),
              ),
              Positioned(
                left: 12,
                top: 10,
                child: Text(
                  'Membership',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                bottom: 0,
                left: 0,
                right: 0,
                child: PageView(
                  controller: _pageController,
                  children: [
                    for (var i = 0; i < 4; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: DefaultTextStyle(
                          style: const TextStyle(color: Colors.white),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight,
                                colors: const [
                                  Color(0xffB2B2B2),
                                  Color(0xff7A7A7A),
                                ],
                              ),
                            ),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 240,
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Member Silver',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              'Membership saat ini',
                                              style: const TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Image.asset(
                                          'assets/images/silver_badge_2.png',
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 12),
                                          child: Text('Transaksi 20x lagi'),
                                        ),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(2.5),
                                          ),
                                          child: SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 5,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            bottom: 12,
                                            top: 22,
                                          ),
                                          child:
                                              Text('Transaksi Rp. 20.000,000'),
                                        ),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(2.5),
                                          ),
                                          child: SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < 4; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: StreamBuilder(
                      stream: _pageIndexController.stream,
                      initialData: 0,
                      builder: (context, current) => DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: i == current.data
                              ? const Color(0xffff5050)
                              : const Color(0xff999999),
                        ),
                        child: const SizedBox(width: 10, height: 10),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 22),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Keuntungan Membership Silver',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var i = 0; i < 3; i++)
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xff999999),
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.width / 4,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(
                          'Gratis Ongkir',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _pageIndexController.close();
    super.dispose();
  }
}
