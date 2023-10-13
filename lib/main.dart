import 'package:flutter/material.dart';

import 'package:foodapp/screen/splash.dart';

import 'constant/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Application',

      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        ),
          scaffoldBackgroundColor: kPrimaryColor,

      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
