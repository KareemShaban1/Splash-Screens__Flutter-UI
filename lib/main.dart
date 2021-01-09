import 'package:flutter/material.dart';
import 'package:splash_screen_flutter/splash_screen.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Splash Screen',
      // theme: theme(),
      home: SplashScreen(),


    );
  }
}



