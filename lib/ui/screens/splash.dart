import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/splash.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 20,
            top: 20 + MediaQuery.of(context).padding.top,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'TERMURAH\nTERPERCAYA.',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.white),
                    child: SizedBox(width: 60, height: 4),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
