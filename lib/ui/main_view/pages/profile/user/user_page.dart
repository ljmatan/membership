import 'package:flutter/material.dart';
import 'package:membership/ui/main_view/pages/profile/user/history/history_screen.dart';
import 'package:membership/ui/main_view/pages/profile/user/info_carousel/info_carousel.dart';
import 'package:membership/ui/main_view/pages/profile/user/membership/membership_screen.dart';

class UserPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UserPageState();
  }
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff999999),
      appBar: AppBar(
        titleSpacing: 12,
        title: Text(
          'Akun Saya',
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/profile_photo.png',
                    height: 90,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Text(
                        'Nama Customer',
                        style: const TextStyle(fontSize: 22),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: Image.asset(
                            'assets/images/silver_badge.png',
                            height: 18,
                          ),
                        ),
                        Text(
                          'Jenis Member',
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 14,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/images/points.png',
                                fit: BoxFit.fitHeight,
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: Text(
                                  '1000',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text('Point member'),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => MembershipScreen(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/wishlist.png',
                          fit: BoxFit.fitHeight,
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text('Wishlist'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/history.png',
                            fit: BoxFit.fitHeight,
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text('Daftar Transaksi'),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => HistoryScreen(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: InfoCarousel(),
          ),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 16, 30, 0),
                child: Column(
                  children: [
                    GestureDetector(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(),
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 36,
                          child: Center(
                            child: Text('Ubah Password'),
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 36,
                        child: Center(
                          child: Text(
                            'Logout',
                            style: const TextStyle(
                              color: Color(0xff0000EE),
                              decoration: TextDecoration.underline,
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
          ),
        ],
      ),
    );
  }
}
