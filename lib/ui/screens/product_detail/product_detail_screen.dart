import 'package:flutter/material.dart';
import 'package:membership/ui/screens/product_detail/product_details.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductDetailScreenState();
  }
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _searchController,
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
                onTap: () async {
                  const String url = 'https://wa.me/6282289903000';
                  if (await canLaunch(url))
                    launch(url);
                  else
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Can\'t launch URL')));
                },
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
      body: ProductDetails(),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
