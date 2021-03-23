import 'package:flutter/material.dart';
import 'package:membership/ui/home/horizontal_list_display.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
