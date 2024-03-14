
import 'package:flutter/material.dart';
import 'package:travelblog/ScreenPage/Home_Page.dart';
import 'package:travelblog/Splashscreens.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home:Splashscreens(),

    );
  }
}
