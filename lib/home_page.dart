import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_course/data/travel_data.dart';
import 'package:flutter_animation_course/widget/back_ground_widget.dart';
import 'package:flutter_animation_course/widget/travel_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CarouselSliderController carouselController = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundWidget(carouselController: carouselController),
        Align(
          alignment: Alignment.bottomCenter,
          child: CarouselSlider(
            carouselController: carouselController,
            items:
                travels
                    .map((travel) => TravelCardWidget(travel: travel))
                    .toList(),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.7,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,

              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged:
                  (index, _) => carouselController.animateToPage(
                    index,
                    duration: Duration(seconds: 1),
                    curve: Curves.ease,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
