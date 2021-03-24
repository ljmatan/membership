import 'package:flutter/material.dart';
import 'package:membership/ui/main_view/pages/home/horizontal_list_display.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD7D7D7),
      appBar: AppBar(
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
      body: ListView(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
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
          const SizedBox(height: 10),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var i = 0; i < 4; i++)
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5.6,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 4),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Color(0xff999999),
                                shape: BoxShape.circle,
                              ),
                              child: SizedBox(width: 48, height: 48),
                            ),
                          ),
                          Text('label'),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          HorizontalListDisplay(label: 'Promo Instore'),
          const SizedBox(height: 10),
          HorizontalListDisplay(label: 'Not Visible'),
          const SizedBox(height: 10),
          HorizontalListDisplay(label: 'Promo Mingguan'),
          const SizedBox(height: 10),
          HorizontalListDisplay(label: 'Special Price'),
        ],
      ),
    );
  }
}
