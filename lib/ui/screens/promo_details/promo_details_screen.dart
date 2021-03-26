import 'package:flutter/material.dart';

class PromoDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nama Promo',
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 28),
            child: Image.asset(
              'assets/images/promo_image.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
          Text(
            'Nama Promo',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 26),
            child: Text(
              'Masa Berlaku',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the '
            'industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type '
            'and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '
            'leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with '
            'the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing '
            'software like Aldus PageMaker including versions of Lorem Ipsum.',
          ),
        ],
      ),
    );
  }
}
