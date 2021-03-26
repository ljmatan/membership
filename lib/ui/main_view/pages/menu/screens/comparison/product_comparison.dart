import 'package:flutter/material.dart';

class ProductComparisonScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductComparisonScreenState();
  }
}

class _ProductComparisonScreenState extends State<ProductComparisonScreen> {
  final _leftColumnController = TextEditingController();
  final _righttColumnController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Compare Produk',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              for (var i = 0; i < 2; i++)
                Expanded(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: i == 0
                          ? Border(
                              right: BorderSide(
                                width: 0.5,
                                color: Colors.black45,
                              ),
                            )
                          : Border(
                              left: BorderSide(
                                width: 0.5,
                                color: Colors.black45,
                              ),
                            ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: TextField(
                                  controller: i == 0
                                      ? _leftColumnController
                                      : _righttColumnController,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color(0xffE4E4E4),
                                    prefixIcon: Icon(Icons.search),
                                    hintText: 'Ketik model produk',
                                    contentPadding: EdgeInsets.zero,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Tipe Produk',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff505050),
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Kode',
                          style: const TextStyle(
                            color: Color(0xff505050),
                          ),
                        ),
                        Image.asset(
                          'assets/images/fridge_$i.png',
                          fit: BoxFit.fitHeight,
                          height: 160,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 16),
                          child: Text(
                            'Harga',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        const Divider(
                          color: Colors.black45,
                          thickness: 1,
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 6),
                                  child: Text(
                                    'Spesifikasi',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff505050),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text('Detail'),
                                Text('Detail'),
                                Text('Detail'),
                                Text('Detail'),
                                Text('Detail'),
                                Text('Detail'),
                                Text('Detail'),
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          color: Colors.black45,
                          thickness: 1,
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 6),
                                  child: Text(
                                    'Fitur',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff505050),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text('Detail'),
                                Text('Detail'),
                                Text('Detail'),
                                Text('Detail'),
                                Text('Detail'),
                                Text('Detail'),
                                Text('Detail'),
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          color: Colors.black45,
                          thickness: 1,
                          height: 0,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _leftColumnController.dispose();
    _righttColumnController.dispose();
    super.dispose();
  }
}
