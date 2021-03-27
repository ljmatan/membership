import 'package:flutter/material.dart';
import 'package:membership/ui/screens/product_detail/product_detail_screen.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoryScreenState();
  }
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kategori Barang',
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: const [
                        Color(0xffFF2A1D),
                        Color(0xffFF971D),
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          'LED TV',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Image.asset(
                          'assets/images/category_0.png',
                          fit: BoxFit.fitHeight,
                          height: 120,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var i = 0; i < 3; i++)
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffFF5050),
                                ),
                                child: SizedBox(width: 56, height: 56),
                              ),
                            ),
                            Text('label'),
                          ],
                        ),
                    ],
                  ),
                ),
                const Divider(height: 0),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: 20,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.7,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, i) => DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            child: Image.asset(
                              'assets/images/category_entry.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    ProductDetailScreen(),
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('SAMSUNG - LED TV 32 INCH UA43N5001AK'),
                                  Text(
                                    'Rp. 3.980.000',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      decorationColor: Colors.red,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  Text('Rp. 2.749.000'),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        for (var i = 0; i < 5; i++)
                                          Icon(
                                            Icons.star,
                                            size: 12,
                                            color: Colors.amber.shade300,
                                          ),
                                        Text(
                                          '(20)',
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: GestureDetector(
                                  child: Icon(
                                    Icons.favorite,
                                    color: const Color(0xffD7443E),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 12),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: const Color(0xffFF0000),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 36,
                                child: Center(
                                  child: Text(
                                    'Beli',
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: const Color(0xff999999),
                  width: 0.2,
                ),
              ),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: kBottomNavigationBarHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.filter_list), Text('Urutkan')],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.sort), Text('Filter')],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
