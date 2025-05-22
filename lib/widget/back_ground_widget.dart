import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_course/data/travel_data.dart';
import 'package:flutter_animation_course/model/travel.dart';
import 'package:flutter_animation_course/widget/travel_card_widget.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.carouselController});
  final CarouselSliderController carouselController;
  // CarouselSliderController carouselController;

  @override
  Widget build(BuildContext context) => CarouselSlider(
    // carouselController: carouselController,
    items: travels.map((travel) => buildBackground(tarvel: travel)).toList(),
    carouselController: carouselController,
    options: CarouselOptions(
      autoPlay: true,
      height: double.infinity,
      aspectRatio: 16 / 9,
      viewportFraction: 1,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,

      // enlargeCenterPage: true,
      reverse: true,
      onPageChanged:
          (index, _) => carouselController.animateToPage(
            index,
            duration: Duration(seconds: 1),
            curve: Curves.ease,
          ),
    ),
  );

  Widget buildBackground({required Travel tarvel}) => Stack(
    children: [
      SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(tarvel.imageUrl, fit: BoxFit.cover),
      ),
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.15, 0.75],
            colors: [Colors.white.withOpacity(0.0001), Colors.white],
          ),
        ),
      ),
    ],
  );
}
