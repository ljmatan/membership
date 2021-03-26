import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:membership/other/overscroll_removed_behavior.dart';
import 'package:membership/ui/main_view/main_view.dart';
import 'package:membership/ui/screens/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );

  runApp(Membership());
}

class Membership extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MembershipState();
  }
}

class _MembershipState extends State<Membership> {
  bool _splashOver = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback(
      (_) => Future.delayed(
        const Duration(seconds: 15),
        () => setState(() => _splashOver = true),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 4,
          titleSpacing: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      builder: (context, child) => ScrollConfiguration(
        behavior: OverscrollRemovedBehavior(),
        child: child!,
      ),
      home: _splashOver ? MainView() : SplashScreen(),
    );
  }
}
