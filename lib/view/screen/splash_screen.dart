import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jongnham_hybrid/view/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static String identity = 'splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay = 5;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() async {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            // Max Size
            Container(
                child: Image.asset(
                  'assets/images/splash.png',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                )
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 100.0,
                width: 200.0,
                child: Image.asset(
                  'assets/images/logos.png',
                  fit: BoxFit.contain,
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                ),
              ),
            ),
            // Container(
            //   color: Colors.pink,
            //   height: 150.0,
            //   width: 150.0,
            // )
          ],
        ),
      ),
    );
  }
}
