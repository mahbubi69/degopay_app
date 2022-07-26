import 'dart:async';

import 'package:degopay_app/colors/color_style.dart';
import 'package:degopay_app/screen/home_screen.dart';
import 'package:degopay_app/screen/profile_screen.dart';
import 'package:degopay_app/widget/navigation/navigation_style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const NavigationStyle()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [primaryPurple, purple])),
        child: Column(
          children: [
            Container(
              height: 300,
              width: 10,
            ),
            Image.asset(
              'assets/images/bg_logo.png',
              // height: 300.0,
              // width: 300.0,
            ),
            Container(
              height: 300,
            ),
            const Text(
              'From',
              style: TextStyle(color: white),
            ),
            const Text(
              'Degovan',
              style: TextStyle(color: white),
            ),
          ],
        ),
      ),
    );
  }
}
