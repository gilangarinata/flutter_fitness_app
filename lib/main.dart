import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/IntroductionScreen.dart';
import 'package:flutter_fitness_app/res/MyColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: MyColor.primary,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: IntroductionScreen(),
    );
  }
}
