import 'package:flutter/material.dart';
import 'package:membership/ui/main_view/pages/categories/category_selection/category_screen.dart';

class CategoriesPage extends StatelessWidget {
  static final List<Color> _colors = const [
    Color(0xffFF971D),
    Color(0xff3864FF),
    Color(0xffFF2C5E),
    Color(0xff2DAF88),
    Color(0xff3864FF),
    Color(0xffFF971D),
    Color(0xff2DAF88),
    Color(0xffFF2C5E),
  ];

  static final List<String> _labels = const [
    'LED TV',
    'Home Appliance',
    'Lemari Es',
    'Mesin Cuci',
    'Kitchen Appliance',
    'Air Conditioner',
    'Audio',
    'Aksesoris',
  ];

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xffD7D7D7),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 9,
          bottom: 9,
        ),
        child: Column(
          children: [
            for (var i = 0; i < 8; i += 2)
              Expanded(
                child: Row(
                  children: [
                    for (var j = 0; j < 2; j++)
                      Expanded(
                        child: GestureDetector(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                              j == 0 ? 18 : 9,
                              9,
                              j == 1 ? 18 : 9,
                              9,
                            ),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: _colors[i + j],
                                borderRadius: BorderRadius.circular(14),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 4,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  SizedBox.expand(
                                    child: Padding(
                                      padding: const EdgeInsets.all(30),
                                      child: Image.asset(
                                        'assets/images/category_${i + j}.png',
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    bottom: 12,
                                    child: Text(
                                      _labels[i + j],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  CategoryScreen(),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
