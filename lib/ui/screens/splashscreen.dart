import 'package:flutter/material.dart';

import '../../main.dart';
import 'custom_bottom_bar.dart';
import 'home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashScreenDelay() async {
    ///
    /// splash screen delay
    ///
    await Future.delayed(Duration(seconds: 3));

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyIntroScreeen(),
        // CustomBottomBar()

    ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreenDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/logo.png"),
        ],
      ),
    );
  }
}
