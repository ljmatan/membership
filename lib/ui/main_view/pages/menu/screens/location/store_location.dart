import 'package:flutter/material.dart';

class StoreLocationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StoreLocationScreenState();
  }
}

class _StoreLocationScreenState extends State<StoreLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lokasi Store',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: const [
                      Color(0xff767676),
                      Color(0xffCDCDCD),
                    ],
                  ),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * (3 / 5),
                ),
              ),
              Positioned(
                left: 20,
                top: 12,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(196, 196, 196, 0.5),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 3, 12, 3),
                    child: Row(
                      children: [
                        Text(
                          'Candi Elektronik 310, Solo',
                          style: const TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: Text(
                    'Kunjungi Toko Offline',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Candi Elektronik 310, Solo'),
                    GestureDetector(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xff00C714),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                          child: Text(
                            'Petunjuk Arah',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Candi Elektronik 310, Solo'),
                    GestureDetector(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xff00C714),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                          child: Text(
                            'Petunjuk Arah',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () {},
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
}
