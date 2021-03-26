import 'package:flutter/material.dart';
import 'package:membership/ui/screens/promo_details/promo_details_screen.dart';

class PromosScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PromosScreenState();
  }
}

class _PromosScreenState extends State<PromosScreen> {
  final _promoSearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Promo Berlangsung',
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    controller: _promoSearchController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffE4E4E4),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Cari Promo',
                      hintStyle: Theme.of(context).textTheme.bodyText1,
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
                const SizedBox(width: 12),
                Expanded(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xffE4E4E4),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 48,
                      child: Center(
                        child: Text('Urutkan berdasarkan'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.builder(
              itemCount: 8,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.width + 120),
              ),
              itemBuilder: (context, i) => GestureDetector(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffC4C4C4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Image.asset(
                            'assets/images/promo_image.png',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          height: 56,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Nama Promo'),
                              const SizedBox(height: 8),
                              Text('Periode Promo'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => PromoDetailsScreen(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _promoSearchController.dispose();
    super.dispose();
  }
}
