import 'package:flutter/material.dart';
import 'package:foodapp/screen/login.dart';
import 'bottom_navigation.dart';
import 'dart:async';



import '../constant/font.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  Bottom_Navigation_Page()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                child: Image.asset(
                  'assets/images/pin.png',
                  height: 60,
                  width: 60,
                  color: Colors.green,
                ),
              ),

              //const SizedBox(height: 40,),

              const SizedBox(
                height: 10,
              ),
              Text(
                'Pincode',
                style: font(
                    textStyle: const TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w900)),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'A new location for your favourite local shop',
                  textAlign: TextAlign.center,
                  style: font(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),

              //SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
