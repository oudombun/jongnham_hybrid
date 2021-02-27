import 'package:flutter/material.dart';
import 'package:jongnham_hybrid/view/screen/detail_screen.dart';
import 'file:///D:/my_research/Planb/JongNhamHybrid/jongnham_hybrid/lib/view/screen/splash_screen.dart';
import 'package:jongnham_hybrid/view/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        primaryColor: Colors.red,
        accentColor: Colors.redAccent,
        scaffoldBackgroundColor: Colors.white,
      ),
      title: 'Jongnhams Hybrid',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.identity,
      routes: {
        SplashScreen.identity: (context) => SplashScreen(),
        HomeScreen.identity: (context) => HomeScreen(),
        DetailScreen.identity: (context) => DetailScreen(),
      },
    );
  }
}
