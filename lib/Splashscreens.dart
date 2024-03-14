
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travelblog/ScreenPage/Home_Page.dart';
class Splashscreens extends StatefulWidget {
  const Splashscreens({super.key});

  @override
  State<Splashscreens> createState() => _SplashscreensState();
}

class _SplashscreensState extends State<Splashscreens> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 1), () =>Navigator.pushReplacement(
        context, MaterialPageRoute(
        builder:(context)=>const HomePage())),

    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(
         child: CircularProgressIndicator(
           color: Colors.white,

         ),
      ),
    );
  }
}
