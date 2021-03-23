import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:membership/other/overscroll_removed_behavior.dart';
import 'package:membership/ui/view/main_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ScrollConfiguration(
        behavior: OverscrollRemovedBehavior(),
        child: child!,
      ),
      home: MainView(),
    );
  }
}
