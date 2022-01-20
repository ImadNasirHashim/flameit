import 'package:flameit/ui/screens/custom_bottom_bar.dart';
import 'package:flameit/ui/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'ui/screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
