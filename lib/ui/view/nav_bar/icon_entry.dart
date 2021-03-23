import 'package:flutter/material.dart';
import 'package:membership/ui/view/bloc/view_controller.dart';

class NavBarIconEntry extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;

  NavBarIconEntry({
    required this.icon,
    required this.label,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StreamBuilder(
        stream: MainViewController.stream,
        initialData: 0,
        builder: (context, pageIndex) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: pageIndex.data == index
                  ? const Color(0xffED4242)
                  : const Color(0xff999999),
            ),
            Text(
              label,
              style: TextStyle(
                color: pageIndex.data == index
                    ? const Color(0xffED4242)
                    : const Color(0xff999999),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
