import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_course/data/travel_data.dart';
import 'package:flutter_animation_course/home_page.dart';
import 'package:flutter_animation_course/model/travel.dart';
import 'package:flutter_animation_course/widget/travel_card_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}


