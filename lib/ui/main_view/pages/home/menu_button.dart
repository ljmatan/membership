import 'package:flutter/material.dart';

class HomePageMenuButton extends StatelessWidget {
  final String label;
  final Widget route;

  HomePageMenuButton({required this.label, required this.route});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
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
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 11),
                ),
              ),
            ],
          ),
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (BuildContext context) => route,
          ),
        ),
      ),
    );
  }
}
